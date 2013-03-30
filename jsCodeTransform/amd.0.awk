#!/usr/bin/awk -f

NR == 1 {
    printf "\n-----------------------------\n"
}
{
    gsub(/dojo.require|[\(\)]/, "") 
    gsub(/\./, "/") 
    sub(/;/, ",") 
    print
}
