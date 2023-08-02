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

## Remote development
- [SSH](https://code.visualstudio.com/docs/remote/ssh)  
  1. Install OpenSSH
     
     Scoop: `scoop install openssh`
  2. `Remote-SSH: Connect to Host...` or `Remote-SSH: Connect Current Window to Host...`

## Security
- 在 Windows 上，VS Code 的所有实例必须以同一特权级别运行，即全部非管理员权限或全部管理员权限。当现有实例为非管理员权限时，以管理员权限启动的新实例不会具有管理员权限；当现有实例为管理员权限时，以非管理员权限启动的新实例会无法正常启动。
- [Workspace Trust](https://code.visualstudio.com/docs/editor/workspace-trust)

## Extensions
- `@recommended`
- `@recommended:languages`

## API for external processes
- [vscode-remote-control: This extension allows you to remotely control Visual Studio Code. Run commands from anywhere you want on your device.](https://github.com/estruyf/vscode-remote-control)
- [command-server: Secure VSCode communication channel designed for voice coding](https://github.com/pokey/command-server)
- [VS Code RPC: Provides an RPC interface to automate VSCode from other processes](https://github.com/hediet/vscode-rpc)
- [Visual Studio Code URL Handler](https://github.com/shengyou/vscode-handler)
- [Monkey Patch: Inject custom javascript into vscode](https://github.com/iocave/monkey-patch)