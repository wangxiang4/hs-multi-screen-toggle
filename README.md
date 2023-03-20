# Macos Hammerspoon 多显示器焦点切换配置

## 使用

1.安装Hammerspoon
```shell
brew install --cask hammerspoon
```

2.在项目目录下执行如下命令,复制几个配置文件到 ~/.hammerspoon 目录下
```shell
cp -r ./init.lua ./config.lua ./modules ~/.hammerspoon
```

3.手动点击 Hammerspoon Console -> Reload config 按钮加载配置文件


## 修饰键
|           |  Key           |
| --------- | -------------- |
| <kbd>⇧</kbd> | Shift       |
| <kbd>⌃</kbd> | Control   	 |
| <kbd>⌥</kbd> | Option 		 |
| <kbd>⌘</kbd> | Command   	 |

## 功能

### 多显示器窗口管理
#### 分屏操作

* <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⌘</kbd> + <kbd>←</kbd> 窗口左半边
* <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⌘</kbd> + <kbd>→</kbd> 窗口右半边

#### 多显示器操作

##### 移动鼠标

* <kbd>⌃</kbd><kbd>⌥</kbd> + <kbd>←</kbd> 将光标移动到上一个显示器
* <kbd>⌃</kbd><kbd>⌥</kbd> + <kbd>→</kbd> 将光标移动到下一个显示器

##### 移动窗口

* <kbd>⇧</kbd><kbd>⌥</kbd> + <kbd>←</kbd> 将活动窗口移动到上一个显示器
* <kbd>⇧</kbd><kbd>⌥</kbd> + <kbd>→</kbd> 将活动窗口移动到下一个显示器
* <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⌘</kbd> + <kbd>M</kbd> 最大化窗口
* <kbd>⇧</kbd><kbd>⌥</kbd> + <kbd>1</kbd> 将活动窗口移动到显示器1并最大化窗口
* <kbd>⇧</kbd><kbd>⌥</kbd> + <kbd>2</kbd> 将活动窗口移动到显示器2并最大化窗口
* <kbd>⇧</kbd><kbd>⌥</kbd> + <kbd>3</kbd> 将活动窗口移动到显示器3并最大化窗口

### 系统操作

* <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⌘</kbd> + <kbd>L</kbd> 锁屏

### 快捷键启动应用程序

* <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⌘</kbd> + <kbd>I</kbd> `iTerm终端`
* <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⌘</kbd> + <kbd>W</kbd> `微信`
