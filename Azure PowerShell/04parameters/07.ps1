param(
     [Parameter(Mandatory)]
     [ValidateSet('foo','bar')]
     [string]$Parameter1,

     [Parameter()]
     [string]$Parameter2

 )

 Write-Host "Parameter 1 value is $Parameter1"
