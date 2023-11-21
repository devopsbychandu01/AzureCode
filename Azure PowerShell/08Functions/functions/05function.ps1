## This only shoud be run in ISE ###
## Need to run 2 time, 1st time it will register the function in local computer, next time onwareds it can recognize the function as a command."
## if you want to use this fuction in terminal like vs code (or) powershell use syntax as . .\file"
## This is only valid till for that particualr terminal ##
## myfunc -a 4 -b 7  ##

Function myfunc01
{
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='Parameter Set 1')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()] 
        [ValidateSet(0,5)]
        $Param1,

        # Param2 help description
        [Parameter(ParameterSetName='Parameter Set 1')]
        [AllowNull()]
        [AllowEmptyCollection()]
        [AllowEmptyString()]
        [ValidateRange(0,5)]
        [int]
        $Param2
    )
    $c = $Param1+$Param2
    write-host "sum is $c"
}

myfunc01 -Param1 4 -Param2 5