$resourceGroup="dev"
$location="eastus"
$stoageaccountname="devopsbychandu01"

Remove-AzStorageAccount -Name $stoageaccountname `
-ResourceGroupName $resourceGroup `
-Force