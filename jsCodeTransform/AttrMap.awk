#!/usr/bin/awk -f

NR == 1 {
    printf "\n-----------------------------\n"
}
{
    head = toupper(substr($1, 1, 1))
    tail = substr($1, 2)
    sub(/:/, "", tail)
    printf "_set%s%sAttr:", head, tail
    for( i = 2; i <= NF; i++) { printf "%s ", $i }
    printf "\n"
     
}
