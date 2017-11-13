source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundles <<EOBUNDLES
    git
    sublime
    osx
    copyfile
    virtualenvwrapper
EOBUNDLES

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
theme=themes/robbyrussell
if ! antigen list | grep -q $theme; then
    antigen theme $HOME/.oh-my-zsh/custom $theme
fi

# Tell Antigen that you're done.
antigen apply
