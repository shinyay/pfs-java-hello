#!/usr/bin/env fish

pfs service invoke hello --text -- -w '\n' -d $argv[1]
