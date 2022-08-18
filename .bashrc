#
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# ---------
# Aliases
# ---------
alias icat='kitten +kitten icat'
alias jkl='bundle exec jekyll serve --livereload'
alias ls='ls -h --color=auto'
alias ll='ls -la'
alias mv='mv'
alias tarball='tar cvzf'
alias untarball='tar xvzg'
alias vpython='source /home/augh/Projects/vpython/bin/activate'
alias youtube='youtube-dl --output="/home/augh/Music/downloads/%(artist)s_%(title)s.%(ext)s" --extract-audio --audio-format=mp3 --add-metadata'


# ---------------------------
# Path Environment Variable
# ---------------------------
PATH="$PATH:~/.emacs.d/bin"
PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"


PS1='[\u@\h \W]\$ '


