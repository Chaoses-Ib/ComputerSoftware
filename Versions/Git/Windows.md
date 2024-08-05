# Windows
[Git for Windows](https://gitforwindows.org/)

## [config](https://git-scm.com/docs/git-config)
- [core.autocrlf](https://git-scm.com/docs/git-config#Documentation/git-config.txt-coreautocrlf)
  
  Setting this variable to "true" is the same as setting the `text` attribute to "auto" on all files and core.eol to "crlf". Set to true if you want to have `CRLF` line endings in your working directory and the repository has LF line endings. This variable can be set to input, in which case no output conversion is performed.
- [core.hideDotFiles](https://git-scm.com/docs/git-config#Documentation/git-config.txt-corehideDotFiles)
  
  The default mode is `dotGitOnly`.
- [core.protectNTFS](https://git-scm.com/docs/git-config#Documentation/git-config.txt-coreprotectNTFS)
  
  If set to true, do not allow checkout of paths that would cause problems with the NTFS filesystem, e.g. conflict with 8.3 "short" names. Defaults to `true` on Windows, and `false` elsewhere.

  ```cmd
  git config --global core.protectNTFS false
  ```

  - [Windows cloning of this repo fails to checkout master. · Issue #111 · analogdevicesinc/linux](https://github.com/analogdevicesinc/linux/issues/111#issuecomment-1091276029)
- [core.restrictinheritedhandles](https://git-scm.com/docs/git-config#Documentation/git-config.txt-corerestrictinheritedhandles)
  
  Override whether spawned processes inherit only standard file handles (stdin, stdout and stderr) or all handles. Can be auto, true or false. Defaults to auto, which means true on Windows 7 and later, and false on older Windows versions.
- [core.unsetenvvars](https://git-scm.com/docs/git-config#Documentation/git-config.txt-coreunsetenvvars) 
  
  Defaults to `PERL5LIB` to account for the fact that Git for Windows insists on using its own Perl interpreter.

## Case-sensitive paths on a case-insensitive filesystem
```cmd
warning: the following paths have collided (e.g. case-sensitive paths
on a case-insensitive filesystem) and only one from the same
colliding group is in the working tree:

  'include/uapi/linux/netfilter/xt_CONNMARK.h'
  'include/uapi/linux/netfilter/xt_connmark.h'
  ...
```

[macos - Case-sensitive path collisions on case-insensitive file system when I do git clone - Stack Overflow](https://stackoverflow.com/questions/63468346/case-sensitive-path-collisions-on-case-insensitive-file-system-when-i-do-git-clo)