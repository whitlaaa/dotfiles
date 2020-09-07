# Linux dotfiles

## Prereqs

* Install ansible
* Set `DOTFILES_USER` variable to your username
  * e.g., `export DOTFILES_USER=$USER`

## Run main playbook

```shell
ansible-playbook dotfiles.yaml --ask-become-pass
```
