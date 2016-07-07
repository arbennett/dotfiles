#
# ~/.bashrc
#

# Correct the color
#xcalib -d :0 -s 0 -v -co 80.0 -red 1.0  2.1 92.0 -green 1.0 2.1 89.0 
#-blue 1.0 2.1 98.0  /opt/Color/gamma_1_0.icc

# If not running interactively, don't do anything
export _JAVA_OPTIONS='-Djava.library.path=/usr/share/java/hdf-java/lib'

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias color='/opt/Color/colorCorrection'
alias gobright='/opt/Color/bright_config'
alias godark='/opt/Color/dark_config'
alias la='ls -la --color=auto'
alias watchpdf='latexmk -pdf -pvc'

PS1='[\u@\h \W]\$ '

export EDITOR="vim"
export MAVEN_OPTS="-Xmx2048M"
export LD_LIBRARY_PATH="/usr/share/java/hdf-java/lib:/usr/lib:$LD_LIBRARY_PATH"
export PATH="$HOME/.local/bin:$PATH:/opt/visit/bin:$HOME/.gem/ruby/2.3.0/bin:/opt/ncl/bin"
export NCARG_ROOT="/opt/ncl"
export PETSC_DIR="/opt/petsc"
export PETSC_ARCH="linux-c-opt"

