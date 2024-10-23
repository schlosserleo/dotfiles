#
# ~/.bashrc
#
export PATH="$HOME/.local/share/gem/ruby/3.3.0/bin:$HOME/.cargo/bin:$PATH"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias au='!git add $(git ls-files -o --exclude-standard)'
PS1='[\u@\h \W]\$ '
if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} && ${SHLVL} == 1 ]]; then
	shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=''
	exec fish "$LOGIN_OPTION"
fi
