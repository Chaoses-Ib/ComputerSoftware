# [Git](https://git-scm.com/)
### Partial clone and shallow clone
[Get up to speed with partial clone and shallow clone](https://github.blog/2020-12-21-get-up-to-speed-with-partial-clone-and-shallow-clone/)
- `git clone --filter=blob:none <url>`
- `git clone --filter=tree:0 <url>`
- `git clone --depth=1 <url>`

Repository | `clone` |  `--filter=blob:none` | `--filter=tree:0` | `--depth=1`
--- | --- | --- | --- | ---
torvalds/linux | | | 858MB (2.3GB) | 242MB (1.7GB)

## Changes
### Ignoring files
[Git - gitignore Documentation](https://git-scm.com/docs/gitignore)
- A `gitignore` file specifies intentionally untracked files that Git should ignore. Files already tracked by Git are not affected.

  To stop tracking a file that is currently tracked, use `git rm --cached` to remove the file from the index. The filename can then be added to the `.gitignore` file to stop the file from being reintroduced in later commits.

The rules for the patterns you can put in the `.gitignore` file are as follows[^progit]:
- Blank lines or lines starting with `#` are ignored.
- Standard glob patterns work, and will be applied recursively throughout the entire working tree.  
  Supported expressions: `?`, `*`, `[abc-z]`, `a/**/z` (nested directories).
- You can start patterns with a forward slash (`/`) to avoid recursivity.
- You can end patterns with a forward slash (`/`) to specify a directory.
- You can negate a pattern by starting it with an exclamation point (`!`).

[A collection of .gitignore templates](https://github.com/github/gitignore)
- Private
  ```gitignore
  private/
  *.private
  *.private.*
  ```

## Credential storage
Options:
- default  
  No cache.
- cache  
  Keep credentials in memory for a certain period of time (15 minutes by default).
- store  
  Save the credentials to a plain-text file on disk, and they never expire.
- [Git Credential Manager](https://github.com/GitCredentialManager/git-credential-manager): manager-core  
  Compared to Git's built-in credential helpers (see below) which provides single-factor authentication support working on any HTTP-enabled Git repository, GCM provides multi-factor authentication support for Azure DevOps, Azure DevOps Server (formerly Team Foundation Server), GitHub, Bitbucket, and GitLab.
- Windows: wincred
- Linux: gnome-keyring/libsecret
- macOS: osxkeychain  
  <details>Cache credentials in the secure keychain that's attached to your system account.</details>

## User interfaces
[Associating text editors with Git - GitHub Docs](https://docs.github.com/en/get-started/getting-started-with-git/associating-text-editors-with-git)
- VS Code: `git config --global core.editor "code --wait"`

### CLI
- [Git](https://git-scm.com/) ([repo](https://github.com/git/git))  
- [Git Extras](https://github.com/tj/git-extras)
- [hub](https://hub.github.com/) ([repo](https://github.com/github/hub))  
  hub is a command line tool that wraps git in order to extend it with extra features and commands that make working with GitHub easier.
- [microsoft/git](https://github.com/microsoft/git)  
  microsoft/git is a special Git distribution to support monorepo scenarios. In addition to the Git CLI, microsoft/git includes the Scalar CLI to further enable working with extremely large repositories.

[Is there a way to get the git root directory in one command? - Stack Overflow](https://stackoverflow.com/questions/957928/is-there-a-way-to-get-the-git-root-directory-in-one-command)
- `git rev-parse --show-toplevel`

### TUI
- [lazygit](https://github.com/jesseduffield/lazygit)

### [GUI](https://git-scm.com/downloads/guis)
- IDEs
  - [VS Code](../../Programming/IDEs/Visual%20Studio%20Code/README.md)
  - [VS](../../Programming/IDEs/Visual%20Studio/README.md)

- [GitHub Desktop](https://desktop.github.com/) ([repo](https://github.com/desktop/desktop))
  - Data
    - `%LOCALAPPDATA%\GitHubDesktop`
    - `%LOCALAPPDATA%\SquirrelTemp`
      
      [Prevent closing the app while it's updating by sergiou87 - Pull Request #15416](https://github.com/desktop/desktop/pull/15416)
    - `%APPDATA%\GitHub Desktop`

- [TortoiseGit: Windows Shell Interface to Git](https://tortoisegit.org/) ([repo](https://github.com/tortoisegit/tortoisegit/))

- [Git History](https://github.com/pomber/git-history)

### VFS
- [VFS for Git](https://github.com/microsoft/VFSForGit)

## Tools
- Analysis
  - [code996](https://github.com/hellodigua/code996)  
    统计 Git 项目的 commit 时间分布，进而推导出项目的编码工作强度。

## Information sources
Books:
- [Pro Git](https://git-scm.com/book) ([repo](https://github.com/progit/progit2))

Tutorials:
<details>

- [Git 菜单](https://github.com/geeeeeeeeek/git-recipes)
</details>

Quick reference guides:
- [Flight rules for Git](https://github.com/k88hudson/git-flight-rules)
- [GitHub Cheat Sheet](https://github.com/tiimgreen/github-cheat-sheet)
<details>

- [Git 的奇技淫巧](https://github.com/521xueweihan/git-tips)
- [Git Commands](https://github.com/joshnh/Git-Commands)
</details>

[^progit]: *Pro Git*