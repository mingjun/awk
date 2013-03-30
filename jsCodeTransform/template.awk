#!/usr/bin/awk -f

{
    gsub(/dojoType/, "data-dojo-type")
    gsub(/dojoAttachPoint/, "data-dojo-attach-point")
    gsub(/dojoAttachEvent/, "data-dojo-attach-event")
    print
}
