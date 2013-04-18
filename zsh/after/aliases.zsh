alias x=exit

# Tmux {{{1
alias tm='tmux -u'
alias tma='tm a'
alias tmt='tm new-session -A  -s test-output' # create or attach to 'test-output' session

# Todo.txt {{{1
alias t='todo.sh -t -d $HOME/Dropbox/todo/todo.cfg'
alias tl='t ls'
alias te='t edit'
alias ta='t add'
alias tap='t append'

# Git {{{1
alias gca='git commit --amend'
alias gs='git status'
alias gst='git status'
alias gl='git pull'
alias ts='tig status'

# Vim {{{1
alias v=vim
alias va='vim $DOTF/zsh/after/aliases.zsh; source $DOTF/zsh/after/aliases.zsh'
alias txt='cd ~/Dropbox/PlainText && vim'
alias vimt='vim ~/Dropbox/vim.TODO'

# Find {{{1
alias ff='find . -iname'
alias ackc='ack --coffee'

# Mac Specific {{{1
if [[ "`uname -s`" == "Darwin" ]]; then
  alias ls='ls -FGsk'
  # s = show size
  # k = show size in kilobytes

# Linux Specific {{{1
else
  alias ack='ack-grep'
  alias ls='ls --color=always -XFhs'
  alias cl='xclip -selection clipboard -o'
  alias st='scrot -s'
  alias wp='feh --bg-fill'

  # mpc {{{2
  alias m=ncmpcpp
  alias mf='mpc search filename'
  alias ma='mpc add'
  alias mp='mpc play'
  alias mcl='mpc clear'
  # 2}}}
fi

# Helpers {{{1

alias c1='awk "{ print \$1 }"'
alias c2='awk "{ print \$2 }"'
alias c3='awk "{ print \$3 }"'
alias c4='awk "{ print \$4 }"'
alias c5='awk "{ print \$5 }"'
alias c6='awk "{ print \$6 }"'

alias total='awk "{ s+=\$1 } END { print s }"'
alias tot='awk "{ s+=\$1 } END { printf(\"%''d\n\", s) }"'

# Other {{{1
alias ak='ssh-add ~/.keys/bitbucket.ssh.private'
alias bw='convert -colors 2'
alias cf='/bin/ls -1 | wc -l' # count files
alias dotf='cd $DOTF'
alias k='less $DOTF/docs/keys.md'
alias kk='vim $DOTF/docs/keys.md'
alias n='env NODE_NO_READLINE=1 rlwrap -p Green -S "node >>> " node'
alias pryy='pry -r ./config/environment'
alias psg='ps aux | grep'
alias q='qlmanage -p'
alias trailer='wget -U QuickTime'
alias z='zeus'

# vim: foldmethod=marker
