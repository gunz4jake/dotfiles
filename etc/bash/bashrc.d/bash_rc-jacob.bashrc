[[ ! $USER = "jacob" ]] && return

export PS1="\[\e[01;36m\]\W\[\e[m\] \[\e[01;32m\]\\$\[\e[m\] "

pfetch

  alias sx='/home/jacob/.config/xorg/startx'
  alias up='yay -Syyu'
  alias re='loginctl reboot'
  alias sd='loginctl poweroff'
  alias scl='make clean && rm -f config.h && git reset --hard origin/master'
  alias dep='yay -Rsn $(yay -Qdtq)'
  alias svm="sudo virsh start GamerVM"
  alias ntl="sudo virsh start NTLite"
