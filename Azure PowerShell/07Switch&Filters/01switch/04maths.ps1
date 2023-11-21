param (
    [Parameter(Mandatory=$true)]
    [int]$num1,
    [Parameter(Mandatory=$true)]
    [int]$num2,
    [Parameter(Mandatory=$true)]
    $function
)

switch ($function) {
    'a' {$solution = $num1 + $num2
        Write-Host "The solution is $solution"}
    's' {$solution = $num1 - $num2
        Write-Host "The solution is $solution"}
    'm' {$solution = $num1 * $num2
        Write-Host "The solution is $solution"}
    'd' {$solution = $num1 / $num2
        Write-Host "The solution is $solution"}
    Default {Write-Host "Invalid function"}
}