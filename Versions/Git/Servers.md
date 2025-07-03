# Servers
## Servers
- [Gitea: Git with a cup of tea](https://github.com/go-gitea/gitea)
- [OneDev: Self-hosted Git Server with Kanban and CI/CD](https://github.com/theonedev/onedev)

## Protocols
[Git - The Protocols](https://git-scm.com/book/ms/v2/Git-on-the-Server-The-Protocols)

- HTTP/HTTPS
  - `error: RPC failed; HTTP 408 curl 22 The requested URL returned error: 408`
    - Use SSH instead
    - `git config http.postBuffer 524288000`
    - `git config http.lowSpeedTime 600`
    - Push smaller batches of changes

    [github - Git pull/push error: RPC failed; result=22, HTTP code = 408 - Stack Overflow](https://stackoverflow.com/questions/22369200/git-pull-push-error-rpc-failed-result-22-http-code-408)

    [error when push my folders in my repo - community - Discussion #49789](https://github.com/orgs/community/discussions/49789)

    [push\_to\_hub returns "OSError: error: RPC failed; HTTP 408 curl 22 The requested URL returned error: 408" - Issue #17813 - huggingface/transformers](https://github.com/huggingface/transformers/issues/17813)

- SSH

  [Generating a new SSH key and adding it to the ssh-agent - GitHub Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
  - [Adding a new SSH key to your GitHub account - GitHub Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

  [Git on Windows: Force use of OpenSSH - Stack Overflow](https://stackoverflow.com/questions/19531626/git-on-windows-force-use-of-openssh)

- Git
