function fish_prompt
    # Format: $user on {device} in {directory} [git branch]
    set -l device (hostname)
    set -l git_branch (git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1)/")

    # First line: user on device in directory (include git branch)
    echo -n (set_color brcyan)$USER' '
    echo -n (set_color brmagenta)'on '
    echo -n (set_color bryellow)$device' '
    echo -n (set_color brmagenta)'in '
    echo -n (set_color brgreen)(prompt_pwd)''
    if test -n "$git_branch"
        echo (set_color brmagenta)$git_branch
    else
        echo
    end

    # Second line: only the prompt glyph
    echo -n (set_color white)'⥂ '
end
