# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/amiridris/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/amiridris/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/amiridris/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/amiridris/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export SPARK_HOME=/opt/homebrew/Cellar/apache-spark/3.5.0/libexec
export PYSPARK_PYTHON=python3
export PYSPARK_DRIVER_PYTHON=python3

# Created by `pipx` on 2025-03-01 00:35:00
export PATH="$PATH:/Users/amiridris/.local/bin"
alias server_login="$(pass dev/server-login)"
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# GPG
export GPG_TTY=$(tty)

# ---- Eza (better ls) -----

alias ls="eza --icons=auto"


GITHUB_PERSONAL_ACCESS_TOKEN=$(pass dev/github-token)

# Task Master aliases added on 2/19/2026
alias tm='task-master'
alias taskmaster='task-master'
alias hamster='task-master'
alias ham='task-master'

# Claude Code deferred MCP loading (added by Taskmaster)
export ENABLE_EXPERIMENTAL_MCP_CLI='true'

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh --cmd cd)"
