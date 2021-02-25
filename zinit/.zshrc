# Zinit
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk
zinit ice lucid wait='0' atinit='zpcompinit'
zinit light zdharma/fast-syntax-highlighting
zinit ice lucid wait="0" atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions
#zinit ice blockf
#zinit light zsh-users/zsh-completions
zinit snippet OMZ::lib/theme-and-appearance.zsh
zinit snippet OMZ::lib/history.zsh
#zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
zinit ice depth=1; zinit light romkatv/powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Zinit END

# alias
alias ll="ls -lAh"
alias vi="vim"
#alias "pip install"="pip install scrapy -i https://pypi.tuna.tsinghua.edu.cn/simple"
#alias tmuxhelp="echo 'ctrl+b \" % :set synchronize-panes on | off'"
alias sj="sshpass -p Lijiale@817 ssh -p 60022 18755188722@116.62.161.45"
alias s8='sshpass -p seven7Day7Net ssh septnet@192.168.8.240'
# alias END

# ENV
export desk=/mnt/c/Users/lijia/Desktop
# ENV END

# proxy
#export http_proxy=192.168.1.135:5678
#export https_proxy=$http_proxy
