export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="cloud"

plugins=(
    git
    debian
    kubectl
    kitty
    zsh-interactive-cd
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias pacman='sudo pacman'
alias code='code --new-window --wait'
alias apt='sudo apt'

alias cam='
if ! lsmod | grep -q v4l2loopback; then
  sudo modprobe v4l2loopback exclusive_caps=1 card_label="Webcam"
fi
scrcpy \
  --video-source=camera \
  --camera-id=0 \
  --camera-size=1920x1080 \
  --camera-fps=30 \
  --orientation=90 \
  --v4l2-sink=/dev/video7 \
  --no-audio \
  --no-playback'



source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory


export PATH=$PATH:/home/felipe/.spicetify

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/felipe/google-cloud-sdk/path.zsh.inc' ]; then . '/home/felipe/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/felipe/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/felipe/google-cloud-sdk/completion.zsh.inc'; fi
