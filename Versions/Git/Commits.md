# Commits
## Commit messages
- [Conventional Commits](https://www.conventionalcommits.org/)
- [Commit Message Guidelines](https://gist.github.com/robertpainsi/b632364184e70900af4ab688decf6f53)

## Commit messages as changelogs
[Conventional Changelog: Generate changelogs and release notes from a project's commit messages and metadata.](https://github.com/conventional-changelog/conventional-changelog)

[vscode-whatchanged: Visual Studio Code extension for generate changelog](https://github.com/release-lab/vscode-whatchanged)
- 不支持自定义 format。

## Rewriting history
- `git commit --amend`

- Interactive rebase: `git rebase -i`

  ```git
  pick f7f3f6d Change my name a bit
  pick 310154e Update README formatting and add blame
  pick a5f4a0d Add cat-file

  # Rebase 710f0f8..a5f4a0d onto 710f0f8
  #
  # Commands:
  # p, pick <commit> = use commit
  # r, reword <commit> = use commit, but edit the commit message
  # e, edit <commit> = use commit, but stop for amending
  # s, squash <commit> = use commit, but meld into previous commit
  # f, fixup <commit> = like "squash", but discard this commit's log message
  # x, exec <command> = run command (the rest of the line) using shell
  # b, break = stop here (continue rebase later with 'git rebase --continue')
  # d, drop <commit> = remove commit
  # l, label <label> = label current HEAD with a name
  # t, reset <label> = reset HEAD to a label
  # m, merge [-C <commit> | -c <commit>] <label> [# <oneline>]
  # .       create a merge commit using the original merge commit's
  # .       message (or the oneline, if no original merge commit was
  # .       specified). Use -c <commit> to reword the commit message.
  #
  # These lines can be re-ordered; they are executed from top to bottom.
  #
  # If you remove a line here THAT COMMIT WILL BE LOST.
  #
  # However, if you remove everything, the rebase will be aborted.
  #
  # Note that empty commits are commented out
  ```
  GUI:
  - GitLens

    [Why I love GitLens in my VsCode - Interactive Rebase](https://blog.delpuppo.net/why-i-love-gitlens-in-my-vscode-interactive-rebase)

- `git filter-branch`
  - `git filter-branch --subdirectory-filter`

  Tools:
  - [git-filter-repo: Quickly rewrite git repository history (filter-branch replacement)](https://github.com/newren/git-filter-repo)
  - [git-rocket-filter: Rewrite git branches in a powerful way](https://github.com/xoofx/git-rocket-filter)

[Git - Rewriting History](https://git-scm.com/book/en/v2/Git-Tools-Rewriting-History)

[Changing a commit message - GitHub Docs](https://docs.github.com/en/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/changing-a-commit-message)