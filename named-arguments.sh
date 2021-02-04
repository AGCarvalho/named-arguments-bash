#!/bin/bash

set() {
    argument_flag=true
    for arg in "$@"; do
        if $argument_flag; then
            argument=$arg
            argument_flag=false
            continue
        fi
        export "$argument"="$arg"
        argument_flag=true
    done
}
