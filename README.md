# git-tools
Some useful tools for use with git

Hint: If the scripts are within your shell's executable search path (a.k.a. the PATH environment variable), you can also run the tools as if they were part of git itself, e.g. "git make-release" instead of "git-make-release".

## git-show-changes-since-last-tag
Execute inside a git working copy. Will list all changes since the last tag.
Known issues:
* No useful error message when not executing inside a git working copy
* Detection of last tag may be unreliable (just using the last one listed with "git tag")

## git-make-release
Helper script for creating new releases of project-templated based projects. Run inside a working copy of your project. Will first list all changes since the last tag (see git-show-changes-since-last-tag) and then guide you through the process of creating the new release tag.

## git-tag-rename
Allows renaming a tag.

## git-create-branches-and-tags-from-remote.sh
Creates local branches and tags from remotes. Useful e.g. when importing a subversion repository into git.
Known issues:
* No safety checks done!

## github-sync-labels
Makes sure that all ChimeraTK repositories have a set of well-known labels
Known issues:
* Currently needs a patch to python3-github to make descriptions work: https://github.com/phako/PyGithub/commit/591078e0113b85dc68bfa1523d38ad9fc5002464
