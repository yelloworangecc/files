# User dependent .bash_profile file

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ] ; then
  PATH="${HOME}/bin:${PATH}"
fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

if [ $OSTYPE == "linux-gnu" ]; then
    alias em='emacsclient --no-wait --alternate-editor=emacs'
    export FLASK_APP=/home/code/wt/wtserver/wtserver.py
    export FLASK_ENV=development
    export CODE=/home/code
fi

if [ $OSTYPE == "msys" ]; then
    alias em='emacsclientw --no-wait --alternate-editor=runemacs'
fi

#export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h\[\e[35m\]\$\[\e[0m\]"
alias ls='ls -A --color=auto'
alias ssh_ali='ssh -p 80 hc@139.196.195.18'
alias chrome='/c/Program\ Files/Google/Chrome/Application/chrome'
export PATH=$PATH:/d/Ruby27Msys2/bin
export ALI_HOME=hc@139.196.195.18:/home/hc
export SYOPT="-a -e \"ssh -p 80\""

if [ "x$LAUNCH_PATH" == "x" ]; then
    export LAUNCH_PATH=~
fi
cd $LAUNCH_PATH

shopt -s expand_aliases
