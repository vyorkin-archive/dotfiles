PATH=/usr/local/bin:$HOME/bin:$HOME/rbenv/bin:/Applications/VMware\ Fusion.app/Contents/Library/:$PATH

export GOPATH=/usr/local/go/bin

export LANG=en_US.UTF-8
export LC_ALL=$LANG

eval "$(rbenv init -)"

source ~/.dotsecrets/.secret_tokens
