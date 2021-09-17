#/usr/bin/env bash 
exe=`./<bin-name> --help | sed -e '/Version/,$d' | cut -f1 -d ":" | sed -e '1,/Flags/d' | cut -f1 -d "<" | sed 's/Commands//'` \
comma=',' \
exe=${exe//$comma} \
complete -W $exe bin-name 