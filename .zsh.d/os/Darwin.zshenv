# vim:set ft=zsh:

export EDITOR="/Applications/MacVim.app/Contents/MacOS/Vim"
export FLEX_HOME=$HOME/sdk/flex
export LSCOLORS="cxexfxdxbxegedabagacad"
export __CF_USER_TEXT_ENCODING=0x1F6:0x08000100:14
export HOMEBREW_HOME=$HOME/beers

path=(
  $HOMEBREW_HOME/bin(N-/)
  $FLEX_HOME/bin(N-/)
  $path
)

if [[ -n $(which npm) ]]; then
  export NPM_HOME="$(npm config get prefix)"
  path=(
    $NPM_HOME/bin(N-/)
    $path
  )
fi

if [[ -n $(which brew) && -n $(brew list | grep coreutils) ]]; then
  path=(
    $(brew --prefix coreutils)/libexec/gnubin(N-/)
    $path
  )
fi

fpath=(
  $HOMEBREW_HOME/share/zsh/site-functions(N-/)
  $HOMEBREW_HOME/share/zsh/functions(N-/)
  $fpath
)
