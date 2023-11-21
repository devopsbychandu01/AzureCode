Get-ChildItem -Path 'C:\Users\chand\Downloads' -Recurse | Where-Object {$_.Extension -eq ".exe"}
