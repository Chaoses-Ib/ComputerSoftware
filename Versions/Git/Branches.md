# Branches
## Remote branches
- `git remote show <remote>` or `git ls-remote <remote>`

## Rebasing
[Pro Git](https://git-scm.com/book/en/v2/Git-Branching-Rebasing)

![](https://git-scm.com/book/en/v2/images/basic-rebase-3.png)

```sh
$ git checkout experiment
$ git rebase master
First, rewinding head to replay your work on top of it...
Applying: added staged command
```

> Often, you'll do this to make sure your commits apply cleanly on a remote branch --- perhaps in a project to which you're trying to contribute but that you don't maintain. In this case, you'd do your work in a branch and then rebase your work onto `origin/master` when you were ready to submit your patches to the main project. That way, the maintainer doesn't have to do any integration work --- just a fast-forward or a clean apply.

> **Do not rebase commits that exist outside your repository and that people may have based work on.**

## Merging vs rebasing
> There is no difference in the end product of the integration, but rebasing makes for a cleaner history. If you examine the log of a rebased branch, it looks like a linear history: it appears that all the work happened in series, even when it originally happened in parallel.

> You can get the best of both worlds: rebase local changes before pushing to clean up your work, but never rebase anything that you’ve pushed somewhere.