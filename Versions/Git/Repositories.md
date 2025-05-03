# Repositories
Is a centralized `.git` really a good idea?

## Splitting
- [git-filter-repo](Commits.md#rewriting-history)

  ```sh
  # Filter the specified branch in your directory and remove empty commits
  git filter-repo --path FOLDER-NAME/

  # Filter the specific branch by using a single sub-directory as the root for the new repository
  # Equivalent to --path <directory>/ --path-rename <directory>/:
  git filter-repo --subdirectory-filter FOLDER-NAME

  git filter-branch --tree-filter "rm -rf FOLDER-NAME" --prune-empty HEAD
  ```
  [Splitting a subfolder out into a new repository - GitHub Docs](https://docs.github.com/en/get-started/using-git/splitting-a-subfolder-out-into-a-new-repository)

- `git subtree split`

  [Git Subtree --- Git Memo v1.1 documentation](https://git-memo.readthedocs.io/en/latest/subtree.html)

- `git fast-export`

[git subtree - Detach (move) subdirectory into separate Git repository - Stack Overflow](https://stackoverflow.com/questions/359424/detach-move-subdirectory-into-separate-git-repository)

[How can I split a single file from a git repo into a new repo? - Stack Overflow](https://stackoverflow.com/questions/39479154/how-can-i-split-a-single-file-from-a-git-repo-into-a-new-repo)

## Merging
```sh
git filter-repo --to-subdirectory a/

git remote add a ./a
git fetch a --tags
# --no-ff -m "Merge a"
git merge a/master --allow-unrelated-histories
git remote remove a
```
[Merging git repos with git-filter-repo --- josh.fail](https://josh.fail/2022/merging-git-repos-with-git-filter-repo/)

[Peter Babič - Merge repos using git-filter-repo](https://peterbabic.dev/blog/merge-repos-using-git-filter-repo/)

[git subtree - Merge two Git repositories without breaking file history - Stack Overflow](https://stackoverflow.com/questions/13040958/merge-two-git-repositories-without-breaking-file-history)

[How to use git-filter-repo to merge one repo as subdirectory into another - Issue #79 - newren/git-filter-repo](https://github.com/newren/git-filter-repo/issues/79)

[How to use git-filter-repo to merge one repo as subdirectory into another - Issue #79 - newren/git-filter-repo](https://github.com/newren/git-filter-repo/issues/79)
