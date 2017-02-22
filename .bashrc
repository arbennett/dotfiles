#
# ~/.bashrc
#
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias color='/opt/Color/colorCorrection'
alias gobright='/opt/Color/bright_config'
alias godark='/opt/Color/dark_config'
alias la='ls -la --color=auto'
alias watchpdf='latexmk -pdf -pvc'
    
tokindle () {
    k2pdfopt $* -dev kpw -mode fw -wrap -hy -ws 0.375 -ls-
}

fixscreen() {
    xrandr --newmode "2560x1440"  159.500000  2560 2608 2640 2720  1440 1443 1447 1467  +HSync -VSync
    xrandr --addmode HDMI-1 "2560x1440"
    xrandr --output HDMI-1 --mode "2560x1440"
}


PS1='[\u@\h \W]\$ '
export EDITOR="vim"
export PATH="$HOME/.local/bin:$PATH:/opt/visit/bin:$HOME/.gem/ruby/2.4.0/bin:/opt/ncl/bin"
export NCARG_ROOT="/opt/ncl"
export PETSC_DIR="/opt/petsc"
export PETSC_ARCH="linux-c-opt"


export PATH="/home/bzq/perl5/bin${PATH:+:${PATH}}"
export PERL5LIB="/home/bzq/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
export PERL_LOCAL_LIB_ROOT="/home/bzq/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
export PERL_MB_OPT="--install_base \"/home/bzq/perl5\""
export PERL_MM_OPT="INSTALL_BASE=/home/bzq/perl5"


