# [Visual Studio Code](https://code.visualstudio.com/)
- [Documentation](https://code.visualstudio.com/docs)
- [GitHub](https://github.com/microsoft/vscode)

Walkthroughs:
- Get Started with VS Code
- Learn the Fundamentals
  - Interactive Editor Playaround
- Boost your Productivity

Settings: `Ctrl+,`

## Editor
- Multi-cursor editing
  - Box selection
    - `Shift+↓/→/↑/←`
    - `MiddleButton+MouseMove`
    - `Shift+Alt+MouseMove`

      起始位置是当前 cursor，而不是鼠标按下位置。
  - Add a cursor: `Alt+Click`
  - Add a cursor above/below: `Ctrl+Alt+↑/↓`
  - Create cursors on all occuurences of a string (`Ctrl+Shift+L`)
  
- IntelliSense (`Ctrl+Space`)
  
- Line actions
  - Copy a line and insert it above/below: `Shift+Alt+↓/↑`
  - Move a line or selection of lines up/down: `Alt+↑/↓`
  - Delete a line: `Ctrl+Shift+K`
  - Comment out a block of code: `Ctrl+/`
  
- Rename refactoring (`F2`)
  
- Formatting
  - Format the entire document: `Shift+Alt+F`
  - Format the current selection: `Ctrl+K, Ctrl+F`
  
- Code folding

  Folding is based on indentation.

  - Fold/unfold: `Ctrl+Shift+[/]`

    Fold 会自动上移 cursor，可以连续 fold；但 unfold 不会自动下移 cursor，导致不能连续 unfold。
  - Fold/unfold all sections: `Ctrl+K, Ctrl+0/J`
  - Fold a certain number of levels: `Ctrl+K, Ctrl+1/2/3/4/5`

  Fold/unfold 不能 undo/redo。

- Errors and warning
  - Navigate across errors: `F8`

- Snippets

  - `Tab`

- [Emmet](https://code.visualstudio.com/docs/editor/emmet)

## Commands
- Command Palette (`Ctrl+Shift+P`)

## [Terminal](https://code.visualstudio.com/docs/terminal/basics)
<code>Ctrl+`</code>

## [Workspaces](https://code.visualstudio.com/docs/editor/workspaces)
- `"window.openFilesInNewWindow": "off"` (the default value is not `"default"`)
- `"window.openWithoutArgumentsInNewWindow": "on"`
- [Auto-load workspace file if it is the only workspace file in the folder root - Issue #208255 - microsoft/vscode](https://github.com/microsoft/vscode/issues/208255)
- [Option (or default) to open readme.md - Issue #219279 - microsoft/vscode](https://github.com/microsoft/vscode/issues/219279)
- [Auto-Open Workspace: VSCode Extension that checks for `*.code-workspace` files in the active directory and offers to open them instead.](https://github.com/wottpal/vscode-auto-open-workspace)
- [Project Manager: Project Manager Extension for Visual Studio Code](https://github.com/alefragnani/vscode-project-manager)

## Remote development
- [SSH](https://code.visualstudio.com/docs/remote/ssh)  
  1. Install OpenSSH
     
     Scoop: `scoop install openssh`
  2. `Remote-SSH: Connect to Host...` or `Remote-SSH: Connect Current Window to Host...`

## Performance
[Performance Issues - microsoft/vscode Wiki](https://github.com/microsoft/vscode/wiki/Performance-Issues)

Tools:
- Running Extensions

- Process Explorer

  不够准确。

  [Is there an activity monitor for VS Code and VS Code extensions? - Stack Overflow](https://stackoverflow.com/questions/76592863/is-there-an-activity-monitor-for-vs-code-and-vs-code-extensions)

  [weinand/vscode-processes: Provide access to all VS Code child processes](https://github.com/weinand/vscode-processes)

- Developer Tools

## Security
- 在 Windows 上，VS Code 的所有实例必须以同一特权级别运行，即全部非管理员权限或全部管理员权限。当现有实例为非管理员权限时，以管理员权限启动的新实例不会具有管理员权限；当现有实例为管理员权限时，以非管理员权限启动的新实例会无法正常启动。
- [Workspace Trust](https://code.visualstudio.com/docs/editor/workspace-trust)

## Extensions
- `@recommended`
- `@recommended:languages`

[Extension API | Visual Studio Code Extension API](https://code.visualstudio.com/api)

[estruyf/vscode-cli: VS Code CLI to help you with extension development and documentation](https://github.com/estruyf/vscode-cli)

## Settings
- [Revisit VS Code folder structure for app data, settings, extensions - Issue #3884 - microsoft/vscode](https://github.com/microsoft/vscode/issues/3884)

## Tasks
[Variables Reference](https://code.visualstudio.com/docs/editor/variables-reference)

## [CLI](https://code.visualstudio.com/docs/editor/command-line)
- `code.cmd` vs `Code.exe`

  `%LOCALAPPDATA%\Programs\Microsoft VS Code\Code.exe`

  [Running VS Code from Run Command Prompt is causing CMD Window to pop up - Issue #1504 - microsoft/vscode-docs](https://github.com/Microsoft/vscode-docs/issues/1504)
  > This is a consequence of Electron's architecture and the lack of having our own exe launcher. Electron.exe doesn't let us have a stdout, when running normally, only when running with `ELECTRON_RUN_AS_NODE`. In order to implement all the CLI tasks (`--install-extension`, etc) we simply can't let Code.exe be in the PATH. Instead, we use `code.cmd` for that: it sets up the right environment which lets us run Electron as a command line tool.

  [Replace code.cmd with an executable - Issue #126149 - microsoft/vscode](https://github.com/microsoft/vscode/issues/126149)

  [vscode-fast-cli: CLI command to open files in VSCode faster than built-in CLI on Windows.](https://github.com/cspotcode/vscode-fast-cli)

- Open a workspace and go to a file in it

  `code -n -a "C:\Test" -g LICENSE.txt` does not work. `-a` will add the workspace to the last active window, not the new window.

  `code -n "C:\Test\LICENSE.txt"` only opens the file.

  `code -n "C:\Test" -g "C:\Test\LICENSE.txt"` works. And if the workspace is already open, it will open the file in the existing window.

  - [OpenFileInWorkspace](https://github.com/Chaoses-Ib/IbDOpusScripts#:~:text=Non%2DDOpus%20scripts%3A-,OpenFileInWorkspace,-Given%20a%20file)

- [vscode-cli-vscode: This is command line help for developer to run vscode-cli command by VS code.](https://github.com/prashantkoshta/vscode-cli-vscode)

## Shell
Icons: `%LOCALAPPDATA%\Programs\Microsoft VS Code\resources\app\resources\win32`

## API for external processes
- [vscode-remote-control: This extension allows you to remotely control Visual Studio Code. Run commands from anywhere you want on your device.](https://github.com/estruyf/vscode-remote-control)
- [command-server: Secure VSCode communication channel designed for voice coding](https://github.com/pokey/command-server)
- [VS Code RPC: Provides an RPC interface to automate VSCode from other processes](https://github.com/hediet/vscode-rpc)
- [Visual Studio Code URL Handler](https://github.com/shengyou/vscode-handler)
- [Monkey Patch: Inject custom javascript into vscode](https://github.com/iocave/monkey-patch)

## Languages
[Language Identifiers](https://code.visualstudio.com/docs/languages/identifiers)