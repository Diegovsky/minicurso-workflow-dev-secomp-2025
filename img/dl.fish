#!/usr/bin/env fish

for file in $argv
    curl -OZL \
        https://github.com/Syndelis/minicurso-docker-secomp-2025/raw/refs/heads/main/slides/img/$file
end
