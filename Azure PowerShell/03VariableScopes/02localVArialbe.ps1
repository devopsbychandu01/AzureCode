#Get all the local variables
Get-Variable -Scope local

# declare a local variable
$myvaiable="hello world"

# getting the local variable output
$myvaiable

# remove local variable
Remove-Variable -Name myvaiable -Scope Local

# make null the current variable
$myvaiable=""