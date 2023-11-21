##script block executes until the condition is true##
## Or script execute if the condition is false ##

$x=1

do
{
  Write-Host "value $x"
  $x++
}
until ($x -lt 5)