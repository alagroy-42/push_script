# push_script

## Description

push_script is a script that helps you simplify the git process, launching the script inside a git directory will open a selection interface in your shell where you can select the files to add, then just give a commit message and it will pushon your current branch.

## Install

```
./install.sh
```

The script and its dependancies will automatically be installed in ~/scripts. The script will be aliased to ```push```. You can change this location by editing $DIR in the installer.

## Usage

Type push in your shell while being in the git directory you want to push, then select the files to push, type a commit message and you are done.

### Selection Keys

| Key | Action |
| --- | --- |
| <kbd>arrows</kbd> | move |
| <kbd>enter</kbd> | Confirm |
| <kbd>esc</kbd> | Quit |
| <kbd>space</kbd> | Select current entry |
