#!/usr/bin/gawk -f 

/data-dojo-type/ { 
    if(match($0, /data-dojo-type *= *["'][^"']+["']/)) {
	str = substr($0, RSTART, RLENGTH);
	head = substr($0, 0, RSTART-1);
	tail = substr($0, RSTART+RLENGTH);
	gsub(/\./, "/", str);
#	printf "%s\n%s%s%s\n", $0, head, str, tail
	print head str tail
    } else {
	print "ERROR!!!: " $0
    }
}

!/data-dojo-type/ {print}
