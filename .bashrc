export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export AUTOFEATURE=true
export dev=~/Documents/Dev

alias ll="ls -al"
alias brake="bundle exec rake"
alias vim="open -a MacVim.app"

# git
alias gs="git status"
alias gpom="git push origin master"
alias pushorigin="hack && cs && ship"

# testing
alias wip="bundle exec cucumber --profile wip"
alias c="bundle exec cucumber --tags ~@rachel-wip --tags ~@wip --tags ~@travis-wip --tags ~@kbeckman-wip"
alias s="bundle exec rspec spec"
alias j="brake jasmine"
alias jc="brake jasmine:ci"
alias cs="brake spec cucumber"
alias csj="s && c && jc"
alias spec="bundle exec rspec"
alias fixtures="bundle exec spec spec/controllers --tag fixtures"
alias autotester="bundle exec autotest"

# gem management
alias remove_all_gems='gem list | cut -d" " -f1 | xargs gem uninstall -aIx'

# migrations
alias dbmigrate="brake db:migrate"
alias migrate="dbmigrate"
alias dbm="dbmigrate"
alias dbmr="brake db:migrate:redo"
alias dbrollback="brake db:rollback"
alias dbr="dbrollback"
alias preptest="brake db:test:prepare"
alias testprep="brake db:test:prepare"
alias routes="brake routes"

# bash customizations
export CLICOLOR=1;
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export PS1=" \[\033[38m\]\u\[\033[01;34m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.split(%r{\n}).grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "
PS1="\[\033[31m\]\$(~/.rvm/bin/rvm-prompt)\[\033[00m\] $PS1"

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
source ~/.rvm/scripts/rvm
