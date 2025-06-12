#!/bin/bash

#fonts color
Green="\033[32m"
Red="\033[31m"
GreenBG="\033[42;37m"
RedBG="\033[41;37m"
Font="\033[0m"

#notification information
OK="${Green}[OK]${Font}"
Error="${Red}[错误]${Font}"

cur_path="$(pwd)"
COMPOSE="docker compose -p ttpos-flutter -f new-docker-compose.yml"

judge() {
    if [[ 0 -eq $? ]]; then
        success "$1 完成"
        sleep 1
    else
        error "$1 失败"
        exit 1
    fi
}

success() {
    echo -e "${OK} ${GreenBG}$1${Font}"
}

warning() {
    echo -e "${Warn} ${YellowBG}$1${Font}"
}

error() {
    echo -e "${Error} ${RedBG}$1${Font}"
}

docker_name() {
    echo `$COMPOSE ps | awk '{print $1}' | grep "\-$1\-"`
}

env_init() {
    if [ ! -f .env ]; then
        cp .env.example .env
    fi
}

env_get() {
    local key=$1
    local value=`cat ${cur_path}/.env | grep "^$key=" | awk -F '=' '{print $2}'`
    echo "$value"
}



####################################################################################
####################################################################################
####################################################################################

if [ $# -gt 0 ]; then
    if [[ "$1" == "init" ]] || [[ "$1" == "install" ]]; then
        env_init
        shift 1
        success "开始启动......"
        $COMPOSE up -d
        judge "启动"
    elif [[ "$1" == "update" ]]; then
        shift 1
        if [[ $(env_get SERVER_MODE) == "release" ]]; then
            $COMPOSE down
            docker rmi -f hub.hitosea.com/ttpos-web/ttpos-web-menu:$(env_get IMAGE_TAG)
            docker rmi -f hub.hitosea.com/ttpos-web/ttpos-web-mobile:$(env_get IMAGE_TAG)
            success "开始更新......"
            $COMPOSE up -d --pull always
            judge "更新"
        else
            success "开始更新......"
            $COMPOSE down
            docker rmi -f hub.hitosea.com/ttpos-web/ttpos-web-menu:$(env_get IMAGE_TAG)
            docker rmi -f hub.hitosea.com/ttpos-web/ttpos-web-mobile:$(env_get IMAGE_TAG)
            $COMPOSE up -d --pull always
            judge "更新"
        fi
    elif [[ "$1" == "uninstall" ]]; then
        shift 1
        $COMPOSE down
        echo -e "${OK} ${GreenBG} 卸载完成 ${Font}"
    elif [[ "$1" == "restart" ]]; then
        shift 1
        $COMPOSE stop "$@"
        $COMPOSE start "$@"
    else
        $COMPOSE "$@"
    fi
else
    $COMPOSE ps
fi

