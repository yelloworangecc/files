# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <https://creativecommons.org/publicdomain/zero/1.0/>. 

# ~/.bash_profile: executed by bash(1) for login shells.

# The copy in your home directory (~/.bash_profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the msys2 mailing list.

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

alias ls='ls --color=auto'
alias em='emacsclientw --no-wait --alternate-editor=runemacs'
alias ssh_ali='ssh -p 80 hc@139.196.195.18'
alias win32python=/d/python32-3.8.10/python.exe
alias win64python=/d/python64-3.8.10/python.exe
alias chrome='/c/Program\ Files/Google/Chrome/Application/chrome.exe'
#alias explorer='explorer .'
#alias condapython=/d/Miniconda3/python.exe
#alias conda=/d/Miniconda3/Scripts/conda.exe
export GIT_TOKEN=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
export PATH=$PATH:/d/Ruby27Msys2/bin
export CODE=/d/Home/Code
export SCRUM=/d/Home/Scrum
export CLOUD_DRIVE=/c/Users/chhuang/iCloudDrive
export ALI_HOME=hc@139.196.195.18:/home/hc
export SYOPT="-a -e \"ssh -p 80\""

if [ "x$LAUNCH_PATH" == "x" ]; then
    export LAUNCH_PATH=~
fi
cd $LAUNCH_PATH

shopt -s expand_aliases
