if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME="~/Library/Android/sdk"

GIT_VERSION=`git --version | cut -d' ' -f3-`

if [ -f /usr/local/Cellar/git/$GIT_VERSION/etc/bash_completion.d/git-completion.bash ]; then
  source /usr/local/Cellar/git/$GIT_VERSION/etc/bash_completion.d/git-completion.bash 
fi

export PATH="/usr/local/opt/openssl/bin:$PATH"
eval "$(direnv hook bash)"

. $(brew --prefix asdf)/asdf.sh
