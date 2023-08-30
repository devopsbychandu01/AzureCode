#Helloworld world script

function Helloworld
{
    param($firstname,$lastname)
    Write-Host "Hello $firstname $lastname"
    Write-Host "you are login from $env:computername"
    Write-Host "we will meet someday"
}

Helloworld -firstname chandu -lastname devops