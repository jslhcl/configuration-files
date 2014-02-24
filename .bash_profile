# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.1-1

# ~/.bash_profile: executed by bash(1) for login shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bash_profile

# Modifying /etc/skel/.bash_profile directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bash_profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bash_profile file

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
# if [ -d "${HOME}/bin" ] ; then
#   PATH="${HOME}/bin:${PATH}"
# fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

alias ls="ls --color=auto -F"

export COMSPEC=/cygdrive/c/Windows/System32/cmd.exe

NDK=/cygdrive/c/android-ndk-r4-crystax
export NDK
M931=/cygdrive/d/views/lcao1_view_MSTR-9.2/SDKSolutions/code/android/MSTRAndroid
export M931
POLARIS=/cygdrive/d/views/lcao1_view_Polaris/SDKSolutions/code/android/MSTRAndroid
export POLARIS
AUPDATE2=/cygdrive/d/views/lcao_view_9_4_android_update2_9_4_0350_0009/SDKSolutions/code/android/MSTRAndroid
export AUPDATE2
PATH=$PATH:$NDK:$M931:$POLARIS:$AUPDATE2
export PATH
