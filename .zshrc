# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE="$HOME/.zsh_history"
HISTSIZE=500000
SAVEHIST=500000
setopt appendhistory
setopt INC_APPEND_HISTORY  
setopt SHARE_HISTORY

source ~/powerlevel10k/powerlevel10k.zsh-theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zshconfig/.p10k.zsh ]] || source ~/.config/zshconfig/.p10k.zsh
source /home/nicolas/.config/zshconfig/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/nicolas/.config/zshconfig/zsh-autosuggestions/zsh-autosuggestions.zsh
