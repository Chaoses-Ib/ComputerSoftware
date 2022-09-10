# [Git](https://git-scm.com/)
## Changes
### Ignoring files
[A collection of .gitignore templates](https://github.com/github/gitignore)

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
### CLI
- [Git](https://git-scm.com/) ([repo](https://github.com/git/git))  
- [Git Extras](https://github.com/tj/git-extras)
- [hub](https://hub.github.com/) ([repo](https://github.com/github/hub))  
  hub is a command line tool that wraps git in order to extend it with extra features and commands that make working with GitHub easier.
- [microsoft/git](https://github.com/microsoft/git)  
  microsoft/git is a special Git distribution to support monorepo scenarios. In addition to the Git CLI, microsoft/git includes the Scalar CLI to further enable working with extremely large repositories.

### TUI
- [lazygit](https://github.com/jesseduffield/lazygit)

### [GUI](https://git-scm.com/downloads/guis)
- [GitHub Desktop](https://desktop.github.com/) ([repo](https://github.com/desktop/desktop))
- [TortoiseGit: Windows Shell Interface to Git](https://tortoisegit.org/) ([repo](https://github.com/tortoisegit/tortoisegit/))
- [Git History](https://github.com/pomber/git-history)

### VFS
- [VFS for Git](https://github.com/microsoft/VFSForGit)

## Servers
- [Gitea: Git with a cup of tea](https://github.com/go-gitea/gitea)
- [OneDev: Self-hosted Git Server with Kanban and CI/CD](https://github.com/theonedev/onedev)

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