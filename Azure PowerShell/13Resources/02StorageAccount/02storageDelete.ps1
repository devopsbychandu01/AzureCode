$resourceGroup="dev"
$location="eastus"
$stoageaccountname="devospbychandu679"

Remove-AzStorageAccount -Name $stoageaccountname `
-ResourceGroupName $resourceGroup `
-Force