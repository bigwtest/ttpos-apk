# 获取当前包名和版本
$env:MELOS_PACKAGE_NAME
$env:MELOS_PACKAGE_VERSION

# 记录当前目录
$currentDir = Get-Location

# 记录vc dll文件目录, 在scripts的dll目录下
$vcDllDir = "$currentDir\..\..\scripts\dll"

# 清理旧的构建文件
if (Test-Path ".\build\windows\x64\runner\Release") {
    Remove-Item -Path ".\build\windows\x64\runner\Release" -Recurse -Force
}

# 执行 Windows 构建
flutter build windows --dart-define-from-file=.env.production.local

# 创建发布目录
$releaseDir = "$currentDir\..\..\releases\$env:MELOS_PACKAGE_NAME\$env:MELOS_PACKAGE_VERSION"
New-Item -Path $releaseDir -ItemType Directory -Force

# 进入构建目录
Set-Location ".\build\windows\x64\runner\Release"

# 设置应用程序名称和快捷方式名称
$appName = switch ($env:MELOS_PACKAGE_NAME) {
    "pos" { "TTPOS" }
    "kds" { "TTPOS-Kitchen" }
    "assistant" { "TTPOS-Go" }
    "tablet" { "TTPOS-Menu" }
    default {
        Write-Host "不支持的包名: $env:MELOS_PACKAGE_NAME"
        exit 1
    }
}

# 设置压缩文件名
$zipFileName = "$appName-$env:MELOS_PACKAGE_VERSION.zip"

# 重命名可执行文件
Rename-Item -Path "${env:MELOS_PACKAGE_NAME}.exe" -NewName "$appName.exe" -Force

# 创建临时目录用于存放要压缩的文件
$tempDir = Join-Path $PWD "temp_for_zip"
New-Item -Path $tempDir -ItemType Directory -Force

# 复制需要的文件到临时目录
$filesToInclude = @(
    "*.exe",
    "*.dll",
    "data",
    "flutter_windows.dll"
)

foreach ($pattern in $filesToInclude) {
    Copy-Item -Path $pattern -Destination $tempDir -Recurse -Force -ErrorAction SilentlyContinue
}

# 复制vc dll目录下的所有dll文件到临时目录
Copy-Item -Path "$vcDllDir\*" -Destination $tempDir -Recurse -Force -ErrorAction SilentlyContinue

# 压缩文件
try {
    Compress-Archive -Path "$tempDir\*" -DestinationPath $zipFileName -Force
    # 复制压缩文件到发布目录
    Copy-Item -Path $zipFileName -Destination $releaseDir -Force
    Write-Host "成功创建压缩文件: $zipFileName"
} catch {
    Write-Host "压缩文件时出错: $_"
} finally {
    # 清理临时目录
    Remove-Item -Path $tempDir -Recurse -Force -ErrorAction SilentlyContinue
}
