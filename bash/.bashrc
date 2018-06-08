source ~/.profile

# something with keyword completion
# . /etc/bash_completion
if [ -f /etc/bash_completion ]
then
    . /etc/bash_completion
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

