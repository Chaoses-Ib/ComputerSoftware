#import "@local/ib:0.1.0": *
#title[#a[Josh][https://josh-project.dev]]
#a-badge[https://github.com/josh-project/josh]

#q[Josh – “Just One Single History” – is a collection of tools and services together composing
a platform for scaling out distributed development and collaboration with Git.

Our goal is to address challenges that arise when the number of people working on software
within any given organization or even across multiple organizations grows. The experience we
aim for is: work in a codebase of any size, with any number of contributors, without slowing
down the change velocity.]

#a[Use cases][https://josh-project.dev/docs/usecases.html]

#q[`josh` is basically just `subtree` but faster/less buggy/better UI,
and i know people using that who are happy with it, unlike subtree or submodule.]
#footnote[#a[FR: Native submodules, submodule specific config - Issue \#2919 - jj-vcs/jj][https://github.com/jj-vcs/jj/issues/2919#issuecomment-1931117047]]

#a[FAQ][https://josh-project.dev/docs/faq.html]
- #q[It is as such very similar to `git filter-branch` just faster, with added features and a different user interface.]

- #q[The basic idea behind Josh is quite similar to `git subtree`.
  However `git subtree`, just like `git filter-branch`, is way too slow for everyday use, even on medium sized repos.
  `git subtree` can only achieve acceptable performance when squashing commits and therefore losing history.
  One core part of Josh is essentially a much faster implementation of `git subtree split`
  which has been specifically optimized for being run frequently inside the same repository.]

- #q[Both `josh-filter` as well as `git filter-repo` enable very fast rewriting of Git history and thus can in simple cases be used for the same purpose.

  Which one is right in more advanced use cases depends on your goals:
  `git filter-repo` offers more flexibility and options on what kind of filtering it supports,
  like rewriting commit messages or even plugging arbitrary scripts into the filtering.

  Josh uses a DSL instead of arbitrary scripts for complex filters and is much more restrictive in the kind of filtering possible,
  but in exchange for those limitations offers incremental filtering as well as bidirectional operation,
  meaning converting changes between both the original and the filtered repos.]

#a[How Josh helps Rust manage code across multiple repositories | Inside Rust Blog][https://blog.rust-lang.org/inside-rust/2026/06/04/how-josh-helps-rust-manage-code-across-multiple-repositories/]
#a-badge[https://www.reddit.com/r/rust/comments/1twp0yz/how_josh_helps_rust_manage_code_across_multiple/]

= Features
- #a[Filter syntax][https://josh-project.dev/docs/reference/filters.html]
- #a[Working with workspaces][https://josh-project.dev/docs/guide/workspaces.html]
  - #a[Importing projects][https://josh-project.dev/docs/guide/importing.html]
    #footnote[#a[Importing projects with external continuity - Issue \#596 - josh-project/josh][https://github.com/josh-project/josh/issues/596]]

= vs. Jujutsu
- #a[FR: sparse checkouts should allow declarative, bidirectional file mappings - Issue \#2288 - jj-vcs/jj][https://github.com/jj-vcs/jj/issues/2288]
- #a[FR: Native submodules, submodule specific config - Issue \#2919 - jj-vcs/jj][https://github.com/jj-vcs/jj/issues/2919]
- #a[FR: Virtual Monorepo - Issue \#7490 - jj-vcs/jj][https://github.com/jj-vcs/jj/issues/7490]

#a[Using jj & josh-filter together -- have any thoughts/reccomendations? - jj-vcs/jj - Discussion \#7597][https://github.com/jj-vcs/jj/discussions/7597]
