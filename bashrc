#
# ~/.bashrc
#
[[ $- != *i* ]] && return
set -o vi
alias ls='ls --color=auto'
alias vim='nvim'
alias la='ls -lah --color=auto'
alias watchpdf='latexmk -pdf -pvc'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'


reflow() {
    DIR=$(basename $(pwd))
    mkdir -p ~/Dropbox/reflow/$DIR
    k2pdfopt $* -dpi 267 -w 1536 -h 2048 -wrap -hy -om 0.3 -o ~/Dropbox/reflow/$DIR/$*
}

check_conda_env () {
    if [ ! -z "$CONDA_DEFAULT_ENV" ]; then
        printf -- "%s" "`basename $CONDA_DEFAULT_ENV`"
    else
        printf -- "%s" ""
    fi
}

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"


PS1=" (\$(check_conda_env)) \[\e[31m\]\W ❱\[\e[32m\]❱\[\e[33m\]❱\[\e(B\]\[\e[m\] \e[0m"
export EDITOR="vim"
export TERM=screen-256color
export NCARG_ROOT="/opt/ncl"
export PETSC_DIR="/opt/petsc"
export PETSC_ARCH="linux-c-opt"
export JULIA_NUM_THREADS=16

export PATH="$HOME/.local/bin:$PATH:/opt/visit/bin:$HOME/.gem/ruby/2.4.0/bin:/opt/ncl/bin"
export PATH="/home/bzq/perl5/bin${PATH:+:${PATH}}"

export PERL5LIB="/home/bzq/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
export PERL_LOCAL_LIB_ROOT="/home/bzq/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
export PERL_MB_OPT="--install_base \"/home/bzq/perl5\""
export PERL_MM_OPT="INSTALL_BASE=/home/bzq/perl5"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/local/miniconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/local/miniconda/etc/profile.d/conda.sh" ]; then
        . "/opt/local/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/opt/local/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# --------------------------
# Machine specific rc files
# --------------------------
if [ -f "$HOME/.hyakrc" ]; then
	source $HOME/.hyakrc
fi

if [ -f "$HOME/.h2orc" ]; then
	source $HOME/.h2orc
fi

if [ -f "$HOME/.cheyennerc" ]; then
	source $HOME/.cheyennerc
fi

if [ -f "$HOME/.windowsrc" ]; then
	source $HOME/.windowsrc
fi

