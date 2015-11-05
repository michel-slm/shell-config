if [ ! -d "${HOME}/.antigen" ]; then
  git clone https://github.com/zsh-users/antigen.git ${HOME}/.antigen
fi

source "${HOME}/.antigen/antigen.zsh"

# k - https://github.com/rimraf/k
antigen bundle rimraf/k

# pure - https://github.com/sindresorhus/pure
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

source "${HOME}/.config/shell/distro/$(lsb_release -is)"

for f in ${HOME}/.config/shell/{aliases,env};
do
  [ -e "$f" ] && source "$f"
done
