# Repositories
## Splitting
- [git-filter-repo](Commits.md#rewriting-history)

  ```sh
  # Filter the specified branch in your directory and remove empty commits
  git filter-repo --path FOLDER-NAME/

  # Filter the specific branch by using a single sub-directory as the root for the new repository
  git filter-repo --subdirectory-filter FOLDER-NAME

  git filter-branch --tree-filter "rm -rf FOLDER-NAME" --prune-empty HEAD
  ```
  [Splitting a subfolder out into a new repository - GitHub Docs](https://docs.github.com/en/get-started/using-git/splitting-a-subfolder-out-into-a-new-repository)

- `git subtree split`

  [Git Subtree --- Git Memo v1.1 documentation](https://git-memo.readthedocs.io/en/latest/subtree.html)

- `git fast-export`

[git subtree - Detach (move) subdirectory into separate Git repository - Stack Overflow](https://stackoverflow.com/questions/359424/detach-move-subdirectory-into-separate-git-repository)

[How can I split a single file from a git repo into a new repo? - Stack Overflow](https://stackoverflow.com/questions/39479154/how-can-i-split-a-single-file-from-a-git-repo-into-a-new-repo)
