# NOTE: Only use `set -gx PATH <path> $PATH` in `config.fish` to modify PATH.
# If you would like to use `fish_user_paths` instead to universally prepend to PATH,
# you can use `set -U fish_user_paths <path> $fish_user_paths`; however,
# *do not reference it here*.
# If you were to do so, $fish_user_paths would grow without bounds!

# Install and set up fisher
if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end

# Set language defaults
set -xU LANG en_US.UTF-8
set -xU LC_ALL en_US.UTF-8

# Set editors
set -xU EDITOR 'subl -w'
set -xU REACT_EDITOR code

# Include user-specific binaries
set -gx PATH /usr/local/bin /usr/local/sbin $PATH

# Set path for coreutils
set -gx PATH /usr/local/opt/coreutils/libexec/gnubin /usr/local/opt/coreutils/libexec/gnuman $PATH
set -gx PATH /usr/local/opt/findutils/libexec/gnubin $PATH
set -gx PATH /usr/local/opt/libiconv/bin $PATH

# Set enviroment variables for Android development
set -xU ANDROID_HOME $HOME/Library/Android/sdk
set -gx PATH $ANDROID_HOME/emulator $ANDROID_HOME/tools $ANDROID_HOME/tools/bin $ANDROID_HOME/platform-tools $PATH

# Fix GPG commit signing on macOS
# https://github.com/keybase/keybase-issues/issues/2798
set -xU GPG_TTY (tty)

# Go
set -xU GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# Python (from Anaconda)
set -gx PATH $HOME/anaconda3/bin $PATH

# Rust
# Note: `rustup-init` will claim that you can run `source $HOME/.cargo/env`; however,
# this method will not work for the fish shell.
# https://github.com/rust-lang/rustup/issues/478
set -gx PATH $HOME/.cargo/bin $PATH

# Yarn
set -gx PATH $HOME/.yarn/bin $PATH

set fish_greeting

starship init fish | source
