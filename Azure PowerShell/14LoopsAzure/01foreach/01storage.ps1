$rg="test"
foreach ($i in 1..10) {
    New-AzStorageAccount `
    -ResourceGroupName $rg `
    -Name "devopsbychandu90y$i" `
    -SkuName Standard_LRS `
    -Location 'East US'
}
