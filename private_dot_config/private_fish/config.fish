if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x ZELLIJ_AUTO_EXIT true
    if not set -q ZELLIJ
        if test "$ZELLIJ_AUTO_ATTACH" = "true"
            zellij attach -c
        else
            zellij
        end

        if test "$ZELLIJ_AUTO_EXIT" = "true"
            kill $fish_pid
        end
    end
end

