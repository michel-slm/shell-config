if [ ! -d "${HOME}/.antigen" ]; then
  git clone https://github.com/zsh-users/antigen.git ${HOME}/.antigen
fi

source "${HOME}/.antigen/antigen.zsh"

# oh-my-zsh
antigen use oh-my-zsh

# k - https://github.com/rimraf/k
antigen bundle rimraf/k

# pure - https://github.com/sindresorhus/pure
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# misc
antigen bundle zsh-users/zsh-history-substring-search

antigen apply

source "${HOME}/.config/shell/distro/$(lsb_release -is)"

for f in ${HOME}/.config/shell/conf.d/*;
do
  source "$f"
done

for f in ${HOME}/.config/shell/{env,aliases};
do
  [ -e "$f" ] && source "$f"
done
