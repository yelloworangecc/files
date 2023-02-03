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
    export FLASK_ENV=development
fi

if [ $OSTYPE == "msys" ]; then
    alias em='emacsclientw --no-wait --alternate-editor=runemacs'
    alias chrome='/c/Program\ Files/Google/Chrome/Application/chrome.exe'
    export SCRUM=~/Scrum
    export FLASK_DEBUG=True
fi

alias ls='ls -A --color=auto'
alias ssh_ali='ssh -p 8080 hc@139.196.195.18'
export GIT_TOKEN=xxx
export ALI_HOME=hc@139.196.195.18:/home/hc
export QQMAILCODE="xxx
export SECRET_KEY=geek
export SSL_CERT_FILE=~/bin/cacert.pem

if [ "x$LAUNCH_PATH" == "x" ]; then
    export LAUNCH_PATH=~
fi
cd $LAUNCH_PATH

shopt -s expand_aliases
