Set-StrictMode -Version latest

$filepath = "C:\data\abcd"
try{
    $files = Get-ChildItem -Path $filepath -ErrorAction Stop

    Write-Output " should see the error"

    $files.foreach({
       $content = Get-Content -Path $_.fullname
       $content
   })
}catch{
    $_.exception.message
}