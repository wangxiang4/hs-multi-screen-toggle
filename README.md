# Macos Hammerspoon Multiple Monitor Operation Switching Configuration

## Use

1.Install Hammerspoon
```shell
brew install --cask hammerspoon
```

2.In The Project Directory Execute At Below Command, Copy a few Config File To `~/.hammerspoon` Directory
```shell
cp -r ./init.lua ./config.lua ./modules ~/.hammerspoon
```

3.Manually Click Hammerspoon Console -> Reload Config Button Loading Config File


## Modifier Keys
| Icon         | Key         |
|--------------|-------------|
| <kbd>⇧</kbd> | Shift       |
| <kbd>⌃</kbd> | Control   	 |
| <kbd>⌥</kbd> | Option 		   |
| <kbd>⌘</kbd> | Command   	 |

## Function

### Multiple Monitor Window Management
#### Split Screen Operate

* <kbd>⌘</kbd><kbd>⌃</kbd><kbd>⌥</kbd> + <kbd>←</kbd> Window Left Half
* <kbd>⌘</kbd><kbd>⌃</kbd><kbd>⌥</kbd> + <kbd>→</kbd> Window Right Half

#### Multiple Monitor Operate

##### Move Cursor
* <kbd>⌃</kbd><kbd>⌥</kbd> + <kbd>1</kbd> Will Cursor Move To 1 Monitor 
* <kbd>⌃</kbd><kbd>⌥</kbd> + <kbd>2</kbd> Will Cursor Move To 2 Monitor

##### Move Window
* <kbd>⌘</kbd><kbd>⌥</kbd> + <kbd>1</kbd> Will Activity Window Move To 1 Monitor
* <kbd>⌘</kbd><kbd>⌥</kbd> + <kbd>2</kbd> Will Activity Window Move To 2 Monitor
* <kbd>⌥</kbd><kbd>⇧</kbd> + <kbd>1</kbd> Will Activity Window Move To 1 Monitor And Maximize
* <kbd>⌥</kbd><kbd>⇧</kbd> + <kbd>2</kbd> Will Activity Window Move To 2 Monitor And Maximize
* <kbd>⌥</kbd><kbd>⇧</kbd> + <kbd>3</kbd> Will Activity Window Move To 3 Monitor And Maximize
* <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⌘</kbd> + <kbd>M</kbd> Maximize Window

### System Operate
* <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⌘</kbd> + <kbd>L</kbd> Lock Screen

### Application Shortcut Keys
* <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⌘</kbd> + <kbd>I</kbd> `ITerminal`
* <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⌘</kbd> + <kbd>W</kbd> `WeChet`
* <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⌘</kbd> + <kbd>A</kbd> `Activity Monitor`
* <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⌘</kbd> + <kbd>N</kbd> `Digital Color Mater`
