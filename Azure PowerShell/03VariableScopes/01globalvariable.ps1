#Get all the global variables
Get-Variable -Scope global

# create a global variable
$global:myVariable = "myvalue"

## remove a global variable
Remove-Variable -Name myVariable -Scope Global