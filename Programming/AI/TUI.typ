#import "@local/ib:0.1.0": *
#a[Claude Code 这种智能 CLI 相对于 Cursor 的优势在哪？为什么感觉前者是主流了？ - V2EX][https://www.v2ex.com/t/1187879]

- #a[Claude Code][https://code.claude.com/]
  - `scoop install main/claude-code`
  - ```
    Claude Code on Windows requires git-bash (https://git-scm.com/downloads/win). If installed but not in PATH, set environment variable pointing to your bash.exe, similar to: CLAUDE_CODE_GIT_BASH_PATH=C:\Program Files\Git\bin\bash.exe
    ```
  - Ollama v0.14

    #a[Claude Code - Ollama][https://docs.ollama.com/integrations/claude-code]
    ```sh
    export ANTHROPIC_AUTH_TOKEN=ollama
    export ANTHROPIC_BASE_URL=http://localhost:11434
    ```
    Only partial APIs are implemented:
    - #a[Claude Code + Ollama 404 errors : r/ollama][https://www.reddit.com/r/ollama/comments/1qjhufj/claude_code_ollama_404_errors/]
