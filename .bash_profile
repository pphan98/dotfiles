
#*** rbenv *** 
eval "$(rbenv init -)"
# Probably not needed, since the above command already
# adds .rbenv/shims to the path
export PATH=$HOME/.rbenv/shims:$PATH

#*** powerline ***
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh