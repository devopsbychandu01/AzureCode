param(
     [Parameter()]
     [string]$Parameter1,

     [Parameter()]
     [string]$Parameter2,

     [Parameter()]
     [switch]$DisplayParameter2Value, 

     [Parameter()]
     [string]$Parameter3,

     [Parameter()]
     [string]$Parameter4,

     [Parameter()]
     [string]$Parameter5,

     [Parameter()]
     [string]$Parameter6,

     [Parameter()]
     [string]$Parameter7
 )

 Write-Host "Parameter 1 value is $Parameter1"
 if ($DisplayParameter2Value.IsPresent) {
     Write-Host "Parameter 2 value is $Parameter2"
 }
 Write-Host "Parameter 3 value is $Parameter3"
 Write-Host "Parameter 4 value is $Parameter4"
 Write-Host "Parameter 5 value is $Parameter5"
 Write-Host "Parameter 6 value is $Parameter6"
 Write-Host "Parameter 7 value is $Parameter7"