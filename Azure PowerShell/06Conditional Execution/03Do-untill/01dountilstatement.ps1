##script block executes until the condition is true##

$x=1

do
{
  Write-Host "value $x"
  $x++
}
until ($x -lt 5)