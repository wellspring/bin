#!/bin/sh
# Generate `tags` file for C/C++ source code in the specified directory (default: current directory)
#   Usage: ctags.c [opts] [dir]
ctags -R --languages=C,C++,ASM --excmd=number --c-kinds=+p --fields=+inaS --extra=+fq "${@:-.}"

# vim: ft=sh
