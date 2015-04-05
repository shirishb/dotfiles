BLUE="\[\033[0;34m\]"
GREEN="\[\033[1;32m\]"
YELLOW="\[\033[0;33m\]"
RED="\[\033[0;31m\]"
NO_COLOUR="\[\033[0m\]"

export PS1="$BLUE\W$NO_COLOUR $ "

export EDITOR=mvim

# Let the shell have colour!
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Paths (pre)
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/mysql/bin:$PATH

# Paths (post)
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
export PATH=$PATH:/Users/shirish/Workspace/github/scripts
export PATH=$PATH:/Users/shirish/Workspace/tools

# Shortcuts
alias blag="cd ~/Workspace/github/blag"
alias fix="astyle --style=kr --indent=spaces=4 --indent-switches"
alias gvim="mvim -O"
alias gdb="gdb-apple"


# Create cscope database in current working directory
csdb() {
    find . -name "*.c" -o -name "*.h" -o -name "*.cpp" -o -name "*.py" > cscope.files
    cscope -b -q -k
    rm -f cscope.files
}

# Update global vim tags
updatetags() {
    ctags -R -f ~/.vim/tags/python27.ctags /opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7
}

# Autogenerate <message>
ambgen() {
    PYTHONPATH=`pwd`
    alembic revision --autogenerate -m $*
}

gtest() {
    export GTEST_ROOT=/Users/shirish/Workspace/gtest-svn
}

enable_coredumps() {
    ulimit -c unlimited
}
