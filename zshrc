# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/dotfiles/zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "softmoth/zsh-vim-mode"
zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug "zplug/zplug", hook-build:"zplug --self-manage"

(zplug check || zplug install) && zplug load

export HISTFILE=~/.zsh_history HISTSIZE=1000 SAVEHIST=1000
setopt INC_APPEND_HISTORY
path=(~/.local/bin ~/winhome/bin $path)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
