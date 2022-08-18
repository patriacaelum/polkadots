# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/augh/.zshrc'

autoload -Uz compinit up-line-or-beginning-search down-line-or-beginning-search
compinit
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}" ]] && bindkey -- "${key[Up]}" up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search
[[ -n "${key[Left]}" ]] && bindkey -- "${key[Left]}" backward-word
[[ -n "${key[Right]}" ]] && bindkey -- "${key[Right]}" forward-word
# End of lines added by compinstall

# Aliases and paths configured by augh
alias icat='kitty +kitten icat'
alias jkl='bundle exec jekyll serve --livereload'
alias ls='ls -h --color=auto --hyperlink=auto'
alias ll='ls -la'
alias tarball='tar cvzf'
alias untar='tar xvzg'
alias vpython='source /home/augh/Projects/vpython/bin/activate'
alias youtube='youtube-dl --output="/home/augh/Music/downloads/%(artist)s_%(title)s.%(ext)s" --extract-audio --audio-format=mp3 --add-metadata'

source '/home/augh/Builds/powerlevel10k/powerlevel10k.zsh-theme'
source '/home/augh/Builds/zsh-autosuggestions/zsh-autosuggestions.zsh'
source '/home/augh/Builds/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'

PATH=$PATH:/home/augh/.gem/ruby/3.0.0/bin
# End of lines configured by augh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
