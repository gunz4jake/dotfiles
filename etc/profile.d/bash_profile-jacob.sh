[ ! "$USER" = "jacob" ] || [ ! "$SHELL" = "/bin/bash" ] && return 0

PATH="${HOME}/bin:${HOME}/opt/bin:$PATH"
XDG_DATA_HOME="${HOME}/.local/share"
XDG_CONFIG_HOME="${HOME}/.config"
XDG_CACHE_HOME="${HOME}/.local/cache"
GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc-2.0"
XAUTHORITY="${XDG_CONFIG_HOME}/xorg/xauth"
XMONAD_CONFIG_DIR="${XDG_CONFIG_HOME}/xmonad"
XMONAD_DATA_DIR="${XDG_DATA_HOME}/xmonad"
XMONAD_CACHE_DIR="${XDG_CACHE_HOME}/xmonad"
BROWSER="/home/jacob/Scripts/XDG/firefox.sh"
_JAVA_AWT_WM_NONREPARENTING="1"

VISUAL="nvim"
EDITOR="nvim"
PAGER="less"

HISTFILE="${XDG_CACHE_HOME}/bash_history"
HISTSIZE=
HISTFILESIZE=
HISTCONTROL="$HISTCONTROL:ignorespace:ignoredups:erasedups"
LESSHISTFILE="${XDG_CACHE_HOME}/less_history"
LESSHISTSIZE=

GNUPGHOME="${XDG_DATA_HOME}/gnupg"
XINITRC="${XDG_CONFIG_HOME}/xorg/xinitrc"

export PATH XDG_DATA_HOME XDG_CONFIG_HOME XDG_CACHE_HOME VISUAL EDITOR PAGER \
       HISTFILE HISTSIZE HISTFILESIZE HISTCONTROL LESSHISTFILE LESSHISTSIZE \
       GNUPGHOME XINITRC GTK2_RC_FILES XAUTHORITY XMONAD_CONFIG_DIR \
       XMONAD_DATA_DIR XMONAD_CACHE_DIR BROWSER _JAVA_AWT_WM_NONREPARENTING=1

[ -f ${XDG_CONFIG_HOME}/bash/rc  ] && . "${XDG_CONFIG_HOME}/bash/rc"

sudo cpupower frequency-set -g performance

sudo mount /media/Storage

clear

/home/jacob/Scripts/login.sh
