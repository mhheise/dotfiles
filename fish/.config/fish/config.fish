# NOTE: Only use `set -gx PATH <path> $PATH` in `config.fish` to modify PATH.
# If you would like to use `fish_user_paths` instead to universally prepend to PATH,
# you can use `set -U fish_user_paths <path> $fish_user_paths`; however,
# *do not reference it here*.
# If you were to do so, $fish_user_paths would grow without bounds!

# Install and set up fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME || set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# Ensure iTerm uses 256 colors
set -xU TERM xterm-256color

# Set language defaults
set -xU LANG en_US.UTF-8
set -xU LC_ALL en_US.UTF-8

# Set editors
set -xU EDITOR 'subl -w'
set -xU REACT_EDITOR code

# Include user-specific binaries
set -gx PATH /usr/local/bin /usr/local/sbin $PATH

# Set path for utilities
set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
set -gx PATH /usr/local/opt/findutils/libexec/gnubin $PATH
set -gx PATH /usr/local/opt/gnu-sed/libexec/gnubin $PATH
set -gx PATH /usr/local/opt/libiconv/bin $PATH

# Set enviroment variables for Android development
set -xU ANDROID_HOME $HOME/Library/Android/sdk
set -gx PATH $ANDROID_HOME/emulator $ANDROID_HOME/tools $ANDROID_HOME/tools/bin $ANDROID_HOME/platform-tools $PATH

# Fix GPG commit signing on macOS
# https://github.com/keybase/keybase-issues/issues/2798
set -xU GPG_TTY (tty)

# Flutter
set -gx PATH $HOME/Dev/flutter/bin $PATH
set -xU INTEL_HAXM_HOME /usr/local/Caskroom/intel-haxm
set -xU JAVA_HOME /Applications/Android Studio.app/Contents/jre/jdk/Contents/Home

# Android emulator abbreviations
abbr generic "emulator @Generic_API_29 -netdelay none -netspeed full -no-boot-anim -no-snapshot -wipe-data -gpu auto"
abbr pixel "emulator @Pixel_API_29 -netdelay none -netspeed full -no-boot-anim -no-snapshot -wipe-data -gpu auto"

# iOS simulator abbreviations
abbr iphone_11 "open -a Simulator --args -CurrentDeviceUDID '98866366-EC98-42AA-AA33-39AB8403CE56'"
abbr iphone_11_pro "open -a Simulator --args -CurrentDeviceUDID '9B8CD6B6-EFD2-4EE4-8D91-652B93A8C924'"
abbr iphone_11_pro_max "open -a Simulator --args -CurrentDeviceUDID '26FB32B0-EF81-4F7D-9ED8-A6C7E04AA8D2'"
abbr iphone_se_2 "open -a Simulator --args -CurrentDeviceUDID '13520372-CA9A-402B-8FA6-E4C6BC1EFCDD'"

# Go
if type -qs go
    set -xU GOPATH $HOME/go
    set -gx PATH $GOPATH/bin $PATH
end

# Python (pyenv is managed with `pyenv.fish`)
# pipx
set -gx PATH ~/.local/bin $PATH
# poetry
set -gx PATH $HOME/.poetry/bin $PATH
# run pip only if virtualenv currently activated
set -xU PIP_REQUIRE_VIRTUALENV true

# Ruby (rbenv is managed with `rbenv.fish`)

# Rust
# Note: `rustup-init` will claim that you can run `source $HOME/.cargo/env`; however,
# this method will not work for the fish shell.
# https://github.com/rust-lang/rustup/issues/478
if type -qs rustc
    set -gx PATH $HOME/.cargo/bin $PATH
end

# Yarn
if type -qs yarn
    set -gx PATH /usr/local/bin/yarn $PATH
end

# Disable the standard greeting
set fish_greeting

starship init fish | source
