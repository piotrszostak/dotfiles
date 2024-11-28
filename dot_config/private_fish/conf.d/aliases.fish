#* ~/.config/fish/conf.d/aliases.fish *#
alias aliasy="nvim ~/.config/fish/conf.d/aliases.fish"
alias bindy="nvim ~/.config/i3/binds.conf"
alias config="nvim ~/.config/i3/config"
alias dots="ranger ~/.local/share/chezmoi/dot_config/"
alias f='chezmoi'
alias fu='chezmoi re-add'
alias fs='cd $HOME/.local/share/chezmoi/ | fish | gs'

alias off="poweroff"
alias logout="i3-msg exit"

alias .="pwd"
alias ..="cd .."
alias ...="cd ../.."

alias l='exa -al --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first'
alias h='history'
alias v='nvim'

alias df='df -h' # human-readable sizes
alias free='free -m' # show sizes in MB
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'

alias err='sudo journalctl -u'
alias syc='sudo systemctl'
alias syd='sudo systemd'
alias vpn='nmcli connection up'

alias timer='termdown'

# docker
alias dimg='docker ps --format "table {{.Names}}\t{{.Image}}"'
alias dport='docker ps --format "table {{.Names}} \t {{.Ports}}"'
alias dc='docker-compose'

# git
alias gs='git status'
alias gl='git log'
alias ga='git add'
alias gau='git add -u'
alias gaf='git add --force'
alias gb='git branch'
alias gch='git checkout'
alias gcl='git clone'
alias gcm='git commit -m'
alias gf='git fetch'
alias tag='git tag'
alias newtag='git tag -a'
alias gp='git push origin'

# Arch-based only
alias mirror="sudo reflector -f 15 -l 15 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias syu="sudo pacman -Syu"
alias installed="pacman -Qn | fzf"
alias installed-yay="pacman -Qm"

# DEBIAN-based only
#alias update='sudo apt update -y'
#alias upgrade='sudo apt update -y && sudo apt upgrade -y'
#alias autoremove='sudo apt autoremove'
