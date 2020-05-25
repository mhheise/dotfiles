if not command -s pyenv > /dev/null
    echo "Install <https://github.com/pyenv/pyenv> to use 'pyenv'."
    exit 1
end

set -l pyenv_root ""

if test -z "$PYENV_ROOT"
    set pyenv_root "$HOME/.pyenv"
    set -xU PYENV_ROOT "$pyenv_root"
else
    set pyenv_root "$PYENV_ROOT"
end

set -gx PATH "$pyenv_root/bin" $PATH

if status --is-interactive
    set -gx PATH "$pyenv_root/shims" $PATH
    set -gx PYENV_SHELL fish
end

command mkdir -p "$pyenv_root/"{shims,versions}
