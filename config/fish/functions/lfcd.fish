# Change working dir in fish to last dir in lf on exit (adapted from ranger).

function lfcd --wraps="lf" --description="lf - Terminal file manager (changing directory on exit)"
    set last_dir (command lf -print-last-dir $argv)
    if test -n "$last_dir"
        cd $last_dir
    end
end
