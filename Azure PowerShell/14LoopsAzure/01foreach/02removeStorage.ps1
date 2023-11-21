$rg="test"
foreach ($i in 1..5) {
    Remove-AzStorageAccount `
        -ResourceGroupName $rg `
        -Name "devopsbychandu90y$i" `
        -Force `
        -AsJob
}