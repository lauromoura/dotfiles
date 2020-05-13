# Paths to your tackle
# set tacklebox_path ~/.tackle ~/.tacklebox

# Theme
#set tacklebox_theme entropy

# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set tacklebox_modules virtualfish virtualhooks

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set tacklebox_plugins python extract

# Load Tacklebox configuration
# . ~/.tacklebox/tacklebox.fish

# . ~/.config/fish/completions/todotxt.fish

set -xg PATH ~/.local/kitty.app/bin $PATH
set -xg PATH ~/bin $PATH
set -xg PATH ~/.cargo/bin $PATH


set -xg PYENV_ROOT ~/.pyenv

set -xg PATH $PYENV_ROOT/bin $PATH

function mynotify
	eval $argv; and notify-send OK $argv; or notify-send FAIL $argv
end

set -gx PATH '/home/lauro/.pyenv/shims' $PATH
set -gx PYENV_SHELL fish

set -gx WORKON_HOME ~/.ve
set -xg PROJECT_HOME ~/workspace


# Output from initial (pyenv init -)
source '/home/lauro/.pyenv/libexec/../completions/pyenv.fish'
command pyenv rehash 2>/dev/null
function pyenv
	set command $argv[1]
	set -e argv[1]
	switch "$command"
	case activate deactivate rehash shell
		source (pyenv "sh-$command" $argv|psub)
	case '*'
		command pyenv "$command" $argv
	end
end

status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)

eval (python -m virtualfish)
