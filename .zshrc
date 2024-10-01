# Update $PATH environment variable.
export PATH=$PATH:$HOME/bin:/usr/local/bin:/usr/bin:/bin:/mwdata/work_space/bin:/opt/nvim-linux64/bin:~/.oes-dev:$HOME/.local/bin

# Path to your oh-my-zsh installation.
export ZSH="/home/msrks/.oh-my-zsh"

# Set environment variables to get identities added to the ssh-agent.
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="cypher"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

PROMPT='[%F{blue}msrks%f%B%F{black} :: %f%F{red}ot%f - %b%F{130}%1~%f]>> '

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Set fzf installation directory path
export FZF_BASE=/usr/bin

# Uncomment the following line to disable fuzzy completion
# export DISABLE_FZF_AUTO_COMPLETION="true"

# Uncomment the following line to disable key bindings (CTRL-T, CTRL-R, ALT-C)
# export DISABLE_FZF_KEY_BINDINGS="true"

export DISABLE_AUTO_TITLE='true'

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(alias-finder
	common-aliases
	extract
	git
	fzf
	history-substring-search
	sudo
	tmux
	zsh-autosuggestions
	zsh-interactive-cd)

# zsh-completions plugin requirement
fpath+="${ZSH_CUSTOM:-"$ZSH/custom"}/plugins/zsh-completions/src"

source "$ZSH/oh-my-zsh.sh"

# User configuration

# Save history so we get auto suggestions
HISTFILE=$HOME/.zsh_history
HISTSIZE=99999
SAVEHIST=$HISTSIZE

# Options
setopt hist_ignore_all_dups 		# remove older duplicate entries from history
setopt hist_reduce_blanks		# remove superfluous blanks from history items
setopt inc_append_history		# save history entries as soon as they are entered
setopt share_history			# share history between different instances of the shell
setopt auto_cd				# cd by typing directory name if it's not a command
setopt correct_all 			# autocorrect commands
setopt auto_list 			# automatically list choices on ambiguous completion
setopt auto_menu 			# automatically use menu completion
setopt always_to_end 			# move cursor to end if word had one match

# Keybindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[[3~' delete-char
bindkey '^[3;5~' delete-char

export EDITOR='nvim'

alias c='clear'
alias vi='nvim'
alias txz='tar -xvzf'
alias txj='tar -xvjf'
alias cdsa='cd /mwdata/work_space/afp/src/svn_work_flows/server'
alias cdga='cd /mwdata/work_space/afp/src/git_work_flows/afp_all/afp-server'
alias cdsc='cd /mwdata/work_space/cifs/src/svn_work_flows/server'
alias cdgc='cd /mwdata/work_space/cifs/src/git_work_flows/cifs_all/novell-cifs'
alias cdgu='cd /mwdata/work_space/umc/src/git_work_flows/umc-aspects'
alias cdgncs='cd /mwdata/work_space/ncs/src/git_work_flows/ncs_all'
alias cdgnrm='cd /mwdata/work_space/nrm/src/git_work_flows/novell-nrm'
alias cdf='cd /mwdata/work_space/pureftpd/src/server'
alias cdb='cd /mwdata/work_space/BBS'
alias cdaqi='cd /mwdata/work_space/afp/qa_issues'
alias cdaci='cd /mwdata/work_space/afp/customer_issues'
alias cdcqi='cd /mwdata/work_space/cifs/qa_issues'
alias cdcci='cd /mwdata/work_space/cifs/customer_issues'
alias cdct='cd /mwdata/work_space/cifs/tests'
alias cdca='cd /mwdata/my_space/code_arena'
alias cdg='cd /mwdata/work_space/glibc/'
alias cdcdd='cd /mwdata/my_space/code_arena/hackfest/2018-oes-cdd'
alias cdds='cd /mwdata/work_space/scripts'

alias sshp='ssh -X ssivaramakrishna@oes-ptf.blr.novell.com'

function sshr() { ssh -X root@164.99.$1 ; }
function sshpr() { ssh -X root@10.200.$1 ; }
function mlc() { grep -e ^[+-] $1 | wc -l ; }
function tz() { tar -zvcf "$1.tar.gz" "$1/" ; }
function tz2() { tar -zvcf "$1".tar.gz "$2" ; }

function scpumc() {
	cd /mwdata/work_space/umc/src/git_work_flows/
	tar -zvcf umc-aspects.tar.gz umc-aspects
	echo ""
	echo "executing \"scp -p $1 umc-aspects.tar.gz root@164.99.117.$2:~/\""
	echo ""
	scp -P $1 umc-aspects.tar.gz root@164.99.117.$2:~/
	echo ""
	date
	echo ""
}

function lscpumc() { cd /mwdata/work_space/umc/src/git_work_flows/; tar -zvcf umc-aspects.tar.gz umc-aspects; scp umc-aspects.tar.gz root@10.0.2.107:~/ }

# tmuxp yaml configs
function lwp() { tmuxp load /mwdata/my_space/tmux-sessions/w-$1.yaml }
function lcap() { tmuxp load /mwdata/my_space/tmux-sessions/ca.yaml }

function losp() {
	case "$1" in
		'ws')
			tmuxp load /mwdata/my_space/tmux-sessions/os-wireshark.yaml
			;;
		'samba')
			tmuxp load /mwdata/my_space/tmux-sessions/os-samba.yaml
			;;
	esac
}

ulimit -c unlimited

test -s ~/.zsh_aliases && source ~/.zsh_aliases || true
