# Linux dotfiles

## Requirements

* Install ansible

### Set Variables

The playbook uses a handful of variables to customize setup for the primary user, as well as some of the roles:

```shell
export DOTFILES_USER=$USER
export GIT_CONFIG_NAME="$YOUR_NAME"
export GIT_CONFIG_EMAIL=$YOUR_EMAIL
```

## Run main playbook

```shell
ansible-playbook dotfiles.yaml --ask-become-pass
```
