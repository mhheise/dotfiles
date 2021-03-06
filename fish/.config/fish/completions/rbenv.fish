function __fish_rbenv_needs_command
    set cmd (commandline -opc)
    if test (count $cmd) -eq 1 -a "$cmd[1]" = "rbenv"
        return 0
    end
    return 1
end

function __fish_rbenv_using_command
    set cmd (commandline -opc)
    if test (count $cmd) -gt 1
        if test "$argv[1]" = "$cmd[2]"
            return 0
        end
    end
    return 1
end

if command -s rbenv > /dev/null
    complete -f -c rbenv -n '__fish_rbenv_needs_command' -a '(rbenv commands)'
    for cmd in (rbenv commands)
        complete -f -c rbenv -n "__fish_rbenv_using_command $cmd" -a "(rbenv completions $cmd)"
    end
end
