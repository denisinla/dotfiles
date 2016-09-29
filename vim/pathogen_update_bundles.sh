#!/usr/bin/env bash

quiet=$1

if [ -d "$HOME/.vim/autoload" ]; then
    curl -LSso "$HOME/.vim/autoload/pathogen.vim" https://tpo.pe/pathogen.vim
fi

if [ -d "$HOME/.vim/bundle" ]; then
    for bundle in "$HOME/.vim/bundle/"*
    do
        if [ -d "$bundle/.git" ]; then
            if [ "$quiet" != "-q" ]; then
                printf "Working on %s...\n" ${bundle##*/}
                cd "$bundle"; git pull 2>/dev/null
            else
                cd "$bundle"; git pull 1>/dev/null 2>&1
            fi
        fi
    done
fi
