## This only shoud be run in ISE ###
## Need to run 2 time, 1st time it will register the function in local computer, next time onwareds it can recognize the function as a command."
## if you want to use this fuction in terminal like vs code (or) powershell use syntax as . .\file"
## This is only valid till for that particualr terminal ##
## myfunc -a 4 -b 7  ##

Function myfunc01
{
param($a,$b)
    $c = $a-$b
    write-host "value is $c"
}

myfunc01 -a 7 -b 2