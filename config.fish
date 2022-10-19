set -xg EDITOR vim
alias t=todo-txt
alias wat=watson
alias wtb=wk-test-baselines
alias wtl=wk-test-lookup
alias exa="exa --icons"
set -xg PATH /home/lauro/bin $PATH
set -xg PATH /home/lauro/.local/bin $PATH
set -xg PATH /home/lauro/.cargo/bin $PATH
set -xg PATH /home/lauro/go/bin $PATH
set -xg PATH /opt/btop/bin $PATH

pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

# if status is-interactive
# 	eval (zellij setup --generate-auto-start fish | string collect)
# end
