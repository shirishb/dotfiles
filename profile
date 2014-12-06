# Let the shell have colour!
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Paths
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
export PATH=$PATH:/Users/shirish/Workspace/github/scripts

# Shortcuts
alias blag="cd ~/Workspace/github/blag"
alias fix="astyle --style=kr --indent=spaces=4 --indent-switches"
alias gvim=mvim

# Create cscope database in current working directory
csdb() {
    find . -name "*.c" -o -name "*.h" -o -name "*.cpp" -o -name "*.py" > cscope.files
    cscope -b -q -k
    rm -f cscope.files
}

# Update globals vim tags
updatetags() {
    ctags -R -f ~/.vim/tags/python27.ctags /opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7
}

