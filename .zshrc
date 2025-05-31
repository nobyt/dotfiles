
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias vim="nvim"
alias vi="nvim"
alias view="nvim -R"

setopt no_beep
setopt auto_pushd
setopt pushd_ignore_dups
setopt auto_cd
setopt hist_ignore_dups
setopt share_history
setopt inc_append_history

export HISTSIZE=100000
export SAVESIZE=100000

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
source $HOME/.fzf-extras/fzf-extras.sh

if [[ -r "${HOME}/.local/dotfiles/.zshrc" ]]; then
  source "${HOME}/.local/dotfiles/.zshrc"
fi
if command -v gh > /dev/null 2>&1; then
  echo "gh completion"
    eval "$(gh completion -s zsh)"
fi
