if not command -s rbenv > /dev/null
    echo "Install <https://github.com/rbenv/rbenv> to use 'rbenv'."
    exit 1
end

set -l rbenv_root ""

if test -z "$RBENV_ROOT"
    set rbenv_root "$HOME/.rbenv"
    set -xU RBENV_ROOT "$rbenv_root"
else
    set rbenv_root "$RBENV_ROOT"
end

set -gx PATH "$rbenv_root/bin" $PATH

if status --is-interactive
    set -gx PATH "$rbenv_root/shims" $PATH
    set -gx RBENV_SHELL fish
end

command mkdir -p "$rbenv_root/"{shims,versions}
