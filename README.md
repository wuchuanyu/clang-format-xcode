# 一键格式化 Xcode 文件

## 01 简介
结合 `Xcode Behavior`、`shell`、`Apple Script`、`clang-format` 一键格式化 Xcode c-style 文件。

## 02 clang-format
### 安装 clang-format
```
brew install clang-format
```
### clang-format 样式
clang-format [样式选项参考](https://clang.llvm.org/docs/ClangFormatStyleOptions.html)

### clang-format 配置
`.clang-format` 为配置文件，文件名不可修改。

## 03 Apple Script 获取 Xcode 当前文件
`get_current_xcode_file.scpt` 脚本文件实现获取 Xcode 当前文件。

## 04 格式化脚本
`clang-format.sh` 脚本文件实现对 Xcode 当前文件使用 `.clang-format` 配置进行格式化。

## 05 Xcode Behavior 一键格式化文件
打开 Xcode 设置，切换到 Behaviors，点击左下角加号添加自定义 Behavior，命名为 Clang Format，设置快捷键（比如 cmd + shift + N）。在右侧勾选“Run”，选择 clang-format.sh 脚本文件。打开任意 c-style 文件，点击快捷键即可一键格式化文件（编辑文件后最好先保存再格式化）。

## 06 日志
`clang-format.log` 文件为日志文件，记录了每次格式化的文件路径和时间。

## 07 llvm
`llvm.clang-format` 为 `llvm` 风格配置文件，作为参考。