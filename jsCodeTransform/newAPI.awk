#!/usr/bin/awk -f

{
    gsub(/dojo\.hasClass/, "domClass.contains")
    gsub(/dojo\.addClass/, "domClass.add")    
    gsub(/dojo\.removeClass/, "domClass.remove")
    gsub(/dojo\.replaceClass/, "domClass.replace")
    gsub(/dojo\.toggleClass/, "domClass.toggle")


    gsub(/dojo\.hitch/, "lang.hitch")
    gsub(/dojo\.exists/, "lang.exists")

    gsub(/dojo\.some/, "array.some")


    gsub(/dojo\.query/, "query")
    gsub(/dojo\.keys/, "keys")
    gsub(/dojo\.isIE/, "has(\"ie\")")


    gsub(/dojo\.stopEvent/, "event.stop")



    print
}
