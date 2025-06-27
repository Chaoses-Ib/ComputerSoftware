# Commits
## Commit messages
- [Conventional Commits](https://www.conventionalcommits.org/)
- [Commit Message Guidelines](https://gist.github.com/robertpainsi/b632364184e70900af4ab688decf6f53)

## [`git log`](https://git-scm.com/docs/git-log)
[Commit formatting](https://git-scm.com/docs/git-log#_commit_formatting):
- `--pretty`/`--format`
  - `oneline`
  - `medium` (default)
  - `fuller`
  - `format:<format-string>`
    - Commit hash: `%H`, `%h`
    - Commit message: `%s`
      - Markdowm: `- %s` (`git log --format="format:- %s" --reverse -20`)
- `--oneline` (`--pretty=oneline --abbrev-commit`)

[git log - How to git log in reverse order? - Stack Overflow](https://stackoverflow.com/questions/2798822/how-to-git-log-in-reverse-order)

## Commit messages as changelogs
- [`git log`](#git-log)

- GitHub: [Generate release notes](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes)
  
  > Automatically add the Markdown for all the merged pull requests from this diff and contributors of this release

  ```md
  **Full Changelog**: https://github.com/Chaoses-Ib/IbEverythingLib/compare/v0.1.1...v0.1.2
  ```

  `.github/release.yml`

- [Conventional Changelog: Generate changelogs and release notes from a project's commit messages and metadata.](https://github.com/conventional-changelog/conventional-changelog)
- [github-changelog-generator: Automatically generate change log from your tags, issues, labels and pull requests on GitHub.](https://github.com/github-changelog-generator/github-changelog-generator)
  - Ruby

VS Code:
- [vscode-whatchanged: Visual Studio Code extension for generate changelog](https://github.com/release-lab/vscode-whatchanged) (discontinued)
  - 不支持自定义 format。

## Date
```sh
git log --format=fuller
```

[How do I make a Git commit in the past? - Stack Overflow](https://stackoverflow.com/questions/3895453/how-do-i-make-a-git-commit-in-the-past)
```
Git internal format = <unix timestamp> <time zone offset>, e.g.  1112926393 +0200
RFC 2822            = e.g. Thu, 07 Apr 2005 22:13:13 +0200
ISO 8601            = e.g. 2005-04-07T22:13:13
```
`git commit --date "..."`

```powershell
$date = (Get-Item "README.md").LastWriteTime | Get-Date -Format o
$date = (Get-Item "README.md").LastWriteTime | Get-Date -UFormat %s -Millisecond 0
git commit --date $date
```

[git - Use file timestamps as commit dates - Stack Overflow](https://stackoverflow.com/questions/74275146/use-file-timestamps-as-commit-dates)

Tools:
- TortoiseGit
- VS Code
  - [Commit with Date: VS Code extension to reate and amend Git commits with manually set commit and author dates.](https://github.com/BrandonXLF/commit-with-date)

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
    - Windows
      - `scoop install git-filter-repo`
      - Need `python3` (not `python`/`py`)
        - Patch `git-filter-repo`

        [python - `git filter-repo` commands output nothing on Windows - Stack Overflow](https://stackoverflow.com/questions/69355161/git-filter-repo-commands-output-nothing-on-windows)
    - [Manual](https://htmlpreview.github.io/?https://github.com/newren/git-filter-repo/blob/docs/html/git-filter-repo.html)
    - No undo

      [undo git filter-repo and restore deleted repository - Stack Overflow](https://stackoverflow.com/questions/72030303/undo-git-filter-repo-and-restore-deleted-repository)
    - `--replace-message <expressions_file>` (`a==>b`)

    [Rewriting git history simply with git-filter-repo](https://andrewlock.net/rewriting-git-history-simply-with-git-filter-repo/)

  - [git-rocket-filter: Rewrite git branches in a powerful way](https://github.com/xoofx/git-rocket-filter)

[Git - Rewriting History](https://git-scm.com/book/en/v2/Git-Tools-Rewriting-History)

[Changing a commit message - GitHub Docs](https://docs.github.com/en/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/changing-a-commit-message)