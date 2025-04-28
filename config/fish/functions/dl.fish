function dl --wraps=aria2c --description 'Download files using aria2c'
    systemd-inhibit --what=idle --who=aria2c --why="Downloading files" \
        aria2c \
        -j 1 \
        --split=8 \
        --max-connection-per-server=8 \
        --max-tries=0 \
        --continue \
        --summary-interval=40 \
        --console-log-level=warn \
        # --user-agent="Mozilla/5.0" \
        $argv
end

