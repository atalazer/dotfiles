# Show effective user in prompts and terminal titles
USER=`id -un`

# Make a nice prompt
[ "${EUID}" = "0" ] && export PS1="\[\033[1;32;40m\]\h\[\033[0;37;40m\]:\[\033[34;40m\][\[\033[1;31;40m\]\u\[\033[0;34;40m\]]\[\033[0;37;40m\]:\[\033[35;40m\]\w\[\033[1;33;40m\]#\[\033[0m\] " \
                    || export PS1="\[\033[1;32;40m\]\h\[\033[0;37;40m\]:\[\033[31;40m\][\[\033[1;34;40m\]\u\[\033[0;31;40m\]]\[\033[0;37;40m\]:\[\033[35;40m\]\w\[\033[1;33;40m\]$\[\033[0m\] "
