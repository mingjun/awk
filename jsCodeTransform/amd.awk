#!/usr/bin/awk -f

NR == 1 {
    printf "\n-----------------------------\n"
    print "define(["
}
{
    gsub(/dojo.require|[\(\)]/, "") 
    gsub(/\./, "/") 
    sub(/;/, ",") 
    print "    " $0
    if( match($0, /\/[^\/]+"/) ) {
	i++
	args[i] = substr($0, RSTART+1, RLENGTH-2)
    }
}

END {
    print "..."
    printf "], function("
    for(x=1;x<=i;x++) { printf "%s, ", args[x] }
    print "... ) {"
    print "//TODO add you code here..."
    print "}); //end of define"
}