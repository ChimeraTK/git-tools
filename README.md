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
