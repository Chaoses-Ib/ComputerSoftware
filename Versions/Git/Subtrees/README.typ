#import "@local/ib:0.1.0": *
#title[Git Subtrees]
#a-badge[https://man.archlinux.org/man/git-subtree.1]

#a[Git Subtree: Alternative to Git Submodule | Atlassian Git Tutorial][https://www.atlassian.com/git/tutorials/git-subtree]
```sh
# Adding the subtree as a remote allows us to refer to it in shorter form:
git remote add -f myremote https://bitbucket.org/vim-plugins-mirror/vim-surround.git

# Now we can add the subtree:
git subtree add --prefix mysubdir myremote main --squash

# To update the sub-project at a later date:
git fetch myremote main
git subtree pull --prefix mysubdir myremote main --squash
```

- ```sh -P <prefix>, --prefix=<prefix>```

- Push a subdirectory into a remote branch of the same repo: \
  ```sh git subtree push --prefix dist origin pages```
  #footnote[#a[Pushing a `dist` folder to GitHub pages without adding it to master][https://gist.github.com/sc1f/12ad9c209a87678b49f4507abf458138]]
  #footnote[#a[deployment - Git: How to push dist directory to a separate branch of the same repository - Stack Overflow][https://stackoverflow.com/questions/52574481/git-how-to-push-dist-directory-to-a-separate-branch-of-the-same-repository]]
  - Slow.
  - No tracked files: `fatal: no new revisions were found`

- Force push:
  #footnote[#a[git - How do I force a subtree push to overwrite remote changes? - Stack Overflow][https://stackoverflow.com/questions/33172857/how-do-i-force-a-subtree-push-to-overwrite-remote-changes]]
  - ```sh git push origin `git subtree split --prefix dist main`:pages --force```
    - ```pwsh git push origin $(git subtree split --prefix dist main):pages --force```
  - New repo
    #footnote[#a[Linux command to delete all files except .git folder? - Stack Overflow][https://stackoverflow.com/questions/22339837/linux-command-to-delete-all-files-except-git-folder]]
    ```pwsh
    $m = git log -1 --pretty=%s
    pushd $target
    # git init
    # git remote add origin https://github.com/my/repo

    # git rm -rf .
    # git clean -fxd

    git add .
    git commit -m $m
    # git reset $(git commit-tree "HEAD^{tree}" -m $m)
    git push origin main -f
    popd
    ```
    For squashing all commits, alternatively:
    #footnote[#a[rebase - How to squash all git commits into one? - Stack Overflow][https://stackoverflow.com/questions/1657017/how-to-squash-all-git-commits-into-one]]
    ```sh
    git checkout --orphan new-main
    git branch -M new-main master
    ```

= Subtrees vs. Submodules
#q[submodule is link; subtree is copy]
#footnote[#a[Differences between git submodule and subtree - Stack Overflow][https://stackoverflow.com/questions/31769820/differences-between-git-submodule-and-subtree]]

Why you may want to consider ```sh git subtree```
#footnote[#a[Git Subtree: Alternative to Git Submodule | Atlassian Git Tutorial][https://www.atlassian.com/git/tutorials/git-subtree]]
- Management of a simple workflow is easy.

- Older version of Git are supported (even older than v1.5.2).

- The sub-project's code is available right after the clone of the super project is done.
  - Users do not need read/write permissions of the sub-repo.

- ```sh git subtree``` does not require users of your repository to learn anything new.
  They can ignore the fact that you are using ```sh git subtree``` to manage dependencies.

- ```sh git subtree``` does not add new metadata files like Git submodule does (i.e., `.gitmodule`).
  - #q[If you pushed your repository to GitHub and others clone it down, I don’t think he/she automatically knows the subtree URL.]

- Contents of the module can be modified without having a separate repository copy of the dependency somewhere else.

Drawbacks (but in our opinion they're largely acceptable):
- You must learn about a new merge strategy (i.e.```sh git subtree```).

- Contributing code back upstream for the sub-projects is slightly more complicated.

- The responsibility of not mixing super and sub-project code in commits lies with you.

#a[The OldWood Thing: Sharing Code with Git Subtree][https://chrisoldwood.blogspot.com/2016/08/sharing-code-with-git-subtree.html]
- #q[When you’re inside a tool like Visual Studio it’s very easy to make a change in the subtree folder and check it in and not necessarily realise you’re modifying what is essentially read-only code.
  When you next update the subtree things get sticky.
  Hence you really need to be diligent about your changes and pay extra attention when you commit to ensure you don’t accidentally include edits within the subtree (if you’re not planning on pushing back that way).
  Depending on how experienced your team are this kind of tip-toeing around the codebase might be just one more thing you’re not willing to take on.]

- #q[An issue we have hit with subtrees is that you can't move them or rename the directories they live in without causing issues.
  Git handles renames and moving of regular directories so well that it lulls you into a false sense of security.]

#a[Explore alternatives to submodules - Issue \#157 - wincent/wincent][https://github.com/wincent/wincent/issues/157]
