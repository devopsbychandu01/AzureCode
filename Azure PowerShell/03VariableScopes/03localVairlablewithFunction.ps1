function Get-function {
    $MyVar = Get-Process PowerShell
    Write-Host
    Write-Host "Function Output:"
    $MyVar
}

# main script

Get-function
Write-Host
Write-Host "Script Body Output:"
Write-Host
$MyVar