# [Visual Studio Code](https://code.visualstudio.com/)
- [Documentation](https://code.visualstudio.com/docs)
- [GitHub](https://github.com/microsoft/vscode)

## Remote development
- [SSH](https://code.visualstudio.com/docs/remote/ssh)  
  1. Install OpenSSH
     
     Scoop: `scoop install openssh`
  2. `Remote-SSH: Connect to Host...` or `Remote-SSH: Connect Current Window to Host...`

## Security
- 在 Windows 上，VS Code 的所有实例必须以同一特权级别运行，即全部非管理员权限或全部管理员权限。当现有实例为非管理员权限时，以管理员权限启动的新实例不会具有管理员权限；当现有实例为管理员权限时，以非管理员权限启动的新实例会无法正常启动。
- [Workspace Trust](https://code.visualstudio.com/docs/editor/workspace-trust)

## API for external processes
- [vscode-remote-control: This extension allows you to remotely control Visual Studio Code. Run commands from anywhere you want on your device.](https://github.com/estruyf/vscode-remote-control)
- [command-server: Secure VSCode communication channel designed for voice coding](https://github.com/pokey/command-server)
- [VS Code RPC: Provides an RPC interface to automate VSCode from other processes](https://github.com/hediet/vscode-rpc)
- [Visual Studio Code URL Handler](https://github.com/shengyou/vscode-handler)
- [Monkey Patch: Inject custom javascript into vscode](https://github.com/iocave/monkey-patch)