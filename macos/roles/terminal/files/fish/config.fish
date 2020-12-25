set -g fish_user_paths "/usr/local/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set PATH $PATH /usr/local/opt/asdf/bin
set PATH $PATH /Users/alexwhitler/.cargo/bin
set PATH $PATH $HOME/.asdf/shims
set PATH (asdf where golang)/packages/bin $PATH
starship init fish | source
