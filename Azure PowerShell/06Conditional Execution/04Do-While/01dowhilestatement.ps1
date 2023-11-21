##script block executes as long as condition is true##
## Or script will execute if the condition is true ##

$x = 1
do
{
  Write-Host "output $x"
  $x++
}
while ($x -le 5)