# TTPOS - Flutter

> **前言**
>
> - 独立运行的服务暂时不做说明，未来有需求我再补充。请先关注嵌入式服务端的实现, 这是首要任务。
>
> - 开发模式或者 debug 构建的包，体积会比较大，且性能稍弱，因为会包含调试信息。开发时仅关注功能实现即可。性能测试在 release 构建的包上做。
>
> - 108 给的时间太少，优化空间很大。我主要先处理 Input 和 Output，还有一些公共类的逻辑，其他业务逻辑我会辅助着实现。

## 项目简介

TTPOS - Flutter 是一个基于 Flutter 和 Dart 的跨平台项目，旨在提供一个高效、灵活的开发环境。

项目需求是在移动设备上运行一个应用，除了基础的业务能力，此应用的核心能力是启动 HTTP 服务，这个服务既能在局域网中作为中心服务提供给各终端连接进行数据交互，也能定时将数据同步到云端服务器。

应用端采用 Flutter 开发，服务端采用 Dart 开发，服务端的既可以作为独立服务运行，也可以作为嵌入式服务运行。

本项目采用将服务端嵌入到应用端的方案，在应用启动时启动服务端，在应用退出时退出服务端。服务端和应用端通过 HTTP 协议进行数据交互。

应用端有直接修改数据库的能力，但为了服务端的兼容性，应用端仅在需要数据库结构迁移时会操作数据库，其他情况一律通过服务端操作数据库。

~~数据库使用 SQLite，数据表结构定义在 `j3_server` 包中。~~

数据库使用 SQLite，数据表结构定义在各自的 `prisma` 目录中。

## 重要说明

数据库 ORM 使用的是 `orm` 和 `orm_flutter`。这个包是实现 `Prisma` 的引擎，和 JavaScript/TypeScript 的版本有相同的 API，但并未完全实现，详细介绍见[Prisma](https://prisma.pub/getting-started/)。

**独立运行**的服务端支持的数据库有:

- PostgreSQL
- MySQL/MariaDB
- SQLite
- SQL Server
- MongoDB
- CockroachDB

**嵌入式**的服务端支持的数据库有:

- SQLite

综上，我采用了 SQLite 作为数据库，主要是因为兼容性。

**`orm_flutter` 目前仅支持了 iOS 和 Android 平台，所以嵌入式服务端仅支持这两个平台，详见介绍[Flutter Integration](https://prisma.pub/getting-started/flutter.html)。**

**`orm_flutter` 目前仅支持了 iOS 和 Android 平台，所以嵌入式服务端仅支持这两个平台，详见介绍[Flutter Integration](https://prisma.pub/getting-started/flutter.html)。**

**`orm_flutter` 目前仅支持了 iOS 和 Android 平台，所以嵌入式服务端仅支持这两个平台，详见介绍[Flutter Integration](https://prisma.pub/getting-started/flutter.html)。**

## 项目结构

项目使用 Melos 进行包管理，包结构如下：

```
.
├── apps                                                # 应用
│   ├── dashboard                                    # 平台端
│   ├── kitchen                                      # 厨房端
│   ├── merchant                                     # 商户端
│   ├── mobile                                       # 移动端
│   ├── pos                                          # 收银端
│   ├── tablet                                       # 平板端
│   └── ...
├── packages                                            # 包
│   ├── server                                       # 服务端
│   ├── shared                                       # 共享包
│   ├── utils                                        # 工具包
│   └── ...
├── melos.yaml                                  # Melos配置文件
└── pubspec.yaml                          # Flutter项目配置文件
```

> **_并非所有终端 App 都需要使用 Flutter 开发，可以根据实际需求调整，但服务端是必须要用 Dart 开发的。_**
>
> **_如果采用了这个方案实现终端离线化，那么我的建议还是使用 Flutter 重构相关的终端 App，即便这会占用大量的开发成本。这样就可以使用同一个项目进行开发和构建了。_**

## 功能清单

- 应用
  - [ ] 平台端 dashboard
  - [ ] 厨房端 kitchen
  - [ ] 商户端 merchant
  - [ ] 移动端 mobile
  - [ ] 收银端 pos
    - [x] 嵌入式服务端
    - [x] 通过 `orm_flutter` 操作 SQLite 数据库
    - [ ] 打印模板
      - [ ] 生成文字格式的打印小票
      - [x] 生成图片格式的打印小票
    - [ ] 路由 (TODO: 原后端开发人员负责)
      - [ ] Assistant
      - [ ] Cashier
      - [ ] Kitchen
      - [ ] Tablet
    - [ ] 数据同步 (TODO: 授权方案未定)
      - [ ] 同步到云端
      - [ ] 从云端同步
    - [ ] 备份 (TODO: 备份策略未定)
      - [ ] 备份到本地
      - [ ] 备份到云端
  - [ ] 平板端 tablet
- 服务端
  - [ ] 服务端 server
    - [x] 独立式服务端
    - [x] 通过 `orm` 操作 SQLite 数据库
  - [ ] 共享包 shared
  - [ ] 工具包 utils

## 开发所需 SDK 的建议版本和安装指南

这是根据 _[BenDaye](https://github.com/BenDaye)_ 的 `Windows 11 [版本 10.0.22631.4169]` 的电脑创建项目时的版本，理论上其他版本也可以，但未经过测试，可能会出现兼容性问题：

1. Flutter SDK: >=3.24.3

   - Dart SDK: >=3.5.3（包含在 Flutter SDK 中）

2. Node.js: >=20.11.1

3. npm: >=10.2.4

4. Melos: >=6.1.0

请确保您安装的 SDK 版本不低于上述列出的最小版本，以确保项目能够正常运行和开发。

```
# 以下是我本机的 flutter doctor 命令的输出

$ flutter doctor

Flutter assets will be downloaded from https://storage.flutter-io.cn. Make sure you trust this source!
Doctor summary (to see all details, run flutter doctor -v):
[√] Flutter (Channel stable, 3.24.3, on Microsoft Windows [版本 10.0.22631.4169], locale zh-CN)
[√] Windows Version (Installed version of Windows is version 10 or higher)
[√] Android toolchain - develop for Android devices (Android SDK version 35.0.0)
[√] Chrome - develop for the web
[√] Visual Studio - develop Windows apps (Visual Studio Community 2022 17.11.3)
[√] Android Studio (version 2024.1)
[√] VS Code, 64-bit edition (version 1.93.0-insider)
[√] Proxy Configuration
[√] Connected device (3 available)
[√] Network resources

• No issues found!
```

### 1. 安装 Flutter 和 Dart

#### 官方文档

- Flutter 安装指南：https://flutter.dev/docs/get-started/install
- Dart 安装指南：https://dart.dev/get-dart

#### 简易步骤

1. 访问 Flutter 官网下载适合你操作系统的安装包。
2. 解压安装包到你想要的目录。
3. 将 Flutter 的 bin 目录添加到你的 PATH 环境变量中。

   ```
   # 临时设置

   export PATH=$HOME/development/flutter/bin:$PATH
   ```

   ***

   ```
   # 永久设置

   # zsh

   echo 'export PATH=$HOME/development/flutter/bin:$PATH' >> ~/.zshrc

   source ~/.zshrc

   # bash

   echo 'export PATH=$HOME/development/flutter/bin:$PATH' >> ~/.bashrc

   source ~/.bashrc
   ```

4. 运行 `flutter doctor` 命令检查是否还需要安装其他依赖。
5. Dart SDK 已包含在 Flutter SDK 中，无需单独安装。

   **配置国内镜像源**

   参考 https://docs.flutter.cn/community/china/

   ```
   # 临时设置

   export PUB_HOSTED_URL=https://pub.flutter-io.cn

   export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
   ```

   ***

   ```
   # 永久设置

   # zsh

   echo 'export PUB_HOSTED_URL=https://pub.flutter-io.cn' >> ~/.zshrc

   echo 'export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn' >> ~/.zshrc

   source ~/.zshrc

   # bash

   echo 'export PUB_HOSTED_URL=https://pub.flutter-io.cn' >> ~/.bashrc

   echo 'export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn' >> ~/.bashrc

   source ~/.bashrc
   ```

### 2. 安装 Android Studio

#### 官方文档

- Android Studio 安装指南：https://developer.android.com/studio
- Flutter 和 Dart 的 Android 支持：https://docs.flutter.dev/get-started/install/macos/mobile-android#configure-the-android-toolchain-in-android-studio

#### 简易步骤

1. 访问 Android Studio 官网，下载适合你操作系统的安装包。
2. 运行安装程序，按照提示完成安装。
3. 安装完成后，打开 Android Studio，配置 SDK 路径。

   确保你安装了以下 SDK：

   - Android SDK Platform, API 35.0.1
   - Android SDK Command-line Tools
   - Android SDK Build-Tools
   - Android SDK Platform-Tools
   - Android Emulator

   配置 `adb` 路径：

   ```
   # 临时设置

   export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
   ```

   ```
   # 永久设置

   # zsh

   echo 'export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools' >> ~/.zshrc

   source ~/.zshrc

   # bash

   echo 'export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools' >> ~/.bashrc

   source ~/.bashrc
   ```

### 3. 安装和激活 Melos

#### 官方文档

- Melos 官方文档：https://melos.invertase.dev/getting-started

#### 简易步骤

1. 确保已安装 Dart SDK。
2. 运行以下命令安装 Melos：
   ```
   dart pub global activate melos
   ```
3. 将 Dart 的全局 bin 目录添加到 PATH 环境变量中。

   ```
   # 临时设置

   export PATH=$HOME/.pub-cache/bin:$PATH
   ```

   ```
   # 永久设置

   # zsh
   echo 'export PATH=$HOME/.pub-cache/bin:$PATH' >> ~/.zshrc
   source ~/.zshrc

   # bash
   echo 'export PATH=$HOME/.pub-cache/bin:$PATH' >> ~/.bashrc
   source ~/.bashrc
   ```

4. 运行 `melos --version` 确认安装成功。

### 4. 安装 Node.js

#### 官方文档

- Node.js 官方下载页面：https://nodejs.org/en/download/
- NVM 安装指南：https://github.com/nvm-sh/nvm#installing-and-updating

#### 简易步骤

##### 原生安装

1. 访问 Node.js 官方网站，下载适合你操作系统的安装包。
2. 运行安装程序，按照提示完成安装。
3. 安装完成后，打开终端运行 `node --version` 和 `npm --version` 确认安装成功。

##### 使用 NVM 安装

1. 安装 NVM：
   ```
   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
   ```
2. 重新加载终端配置或重启终端。
3. 安装最新版 Node.js：
   ```
   nvm install node
   ```
4. 使用已安装的 Node.js：
   ```
   nvm use node
   ```
5. 验证安装：
   ```
   node --version
   npm --version
   ```

使用 NVM 的优势在于可以方便地管理多个 Node.js 版本。

## 开发指南

### 1. 安装依赖

```
melos bootstrap

# 如果遇到依赖安装失败，请多试几次，要清空依赖，请使用以下命令

melos clean

# 再次执行

melos bootstrap
```

### 2. 数据库的初始化和结构迁移

```
# 嵌入式

cp packages/server/.env.example packages/server/.env

melos run prisma:generate

melos run prisma:migrate:dev
```

### 3. 启动应用

#### 3.1 嵌入式运行

- 使用 vscode 或 Android Studio 打开项目，选择要运行的应用，如 `pos` 然后按 `F5` 键运行。

- 终端运行

  ```
  cd apps/pos

  flutter run
  ```

> 你可能会遇到 `Not fond */query_engine/*/libquery_engine.a file` 的报错
>
> 关于 `engine` 缺失的官方解释可以查看 https://prisma.pub/getting-started/flutter.html#faq
>
> **官方的解释是你的网络不行 😒**
>
> 我的解决方式是：
>
> - `cd apps/pos` 后执行 `dart run orm_flutter:dl_engine` 命令下载 `engine`

~~#### 3.2 独立运行~~

```
cd packages/server

dart run --enable-vm-service server
```

### 4. 测试

TODO

### 5. 构建

TODO

### 6. 发布

TODO

### 7. 其他

#### 7.1 修改包名

https://pub.dev/packages/change_app_package_name

```
dart run change_app_package_name:main com.new.package.name
```

#### 7.2 修改应用名称

https://pub.dev/packages/rename_app

```
dart run rename_app:main all="My App Name"
```

#### 7.3 修改应用图标

https://pub.dev/packages/flutter_launcher_icons

```
dart run flutter_launcher_icons
```

---------------------- package 打包 ----------------------

### 安装 Flutter 和 Dart

#### 官方文档

- Flutter 安装指南：https://flutter.dev/docs/get-started/install
- Dart 安装指南：https://dart.dev/get-dart

### 安装和激活 Melos

#### 官方文档

- Melos 官方文档：https://melos.invertase.dev/getting-started

#### 简易步骤

1. 确保已安装 Dart SDK。
2. 运行以下命令安装 Melos：

   ```
   dart pub global activate melos

    运行 `melos --version` 确认安装成功。

    执行`flutter doctor`
    查看android 和Xcode 环境是否正常可以运行及打包

   ```

3. 执行 melos run init 生出基础配置文件

4. 配置各个端的 URL
   目录为 apps/pos 端代表收银端下的 .env.production.local 文件里的 API_BASE_URL=

#### 打包安卓 apk

- 打包所有端
  `melos build:android`

- 打包收银端
  `melos build:pos:android`

- 打包平板端
  `melos build:tablet:android`

- 打包点餐助手
  `melos build:assistant:android`

- 打包厨显端
  `melos build:kds:android`

#### MacOS 如果需要打包成 dmg

打包 dmg 需要安装 `brew install create-dmg`

- 打包所有端（收银、平板、点餐助手、厨显）
  `melos build:mac`

- 打包收银端
  `melos build:pos:mac`

- 打包平板端
  `melos build:tablet:mac`

- 打包点餐助手
  `melos build:assistant:mac`

- 打包厨显端
  `melos build:kds:mac`

#### 打包 web

- 打包所有端 (扫码点餐、电子菜单)
  `melos build:web`

- 打包扫码点餐
  `melos build:web:mobile`

- 打包电子菜单
  `melos build:web:menu`
# ttpos-apk
