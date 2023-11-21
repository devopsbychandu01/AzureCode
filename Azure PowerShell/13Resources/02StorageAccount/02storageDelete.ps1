$resourceGroup="dev"
$location="eastus"
$stoageaccountname="devopsbychandu0989"

Remove-AzStorageAccount -Name $stoageaccountname `
-ResourceGroupName $resourceGroup `
-Force