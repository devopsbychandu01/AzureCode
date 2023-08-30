param(
    [Parameter(Mandatory)][string]$StorageAccountName,
    [Parameter(Mandatory)][ValidateSet('eastus','centralindia')][string]$location,
    [Parameter(Mandatory)][string]$SubscriptionName,
    [Parameter(Mandatory)][string]$resourceGroup
)


Set-AzContext -Subscription $SubscriptionName

$global:skuName="Standard_LRS"
$global:kind="StorageV2"

New-AzStorageAccount `
    -ResourceGroupName $resourceGroup `
    -Name $StorageAccountName `
    -Location $location `
    -SkuName $skuName `
    -Kind $kind `
    -AssignIdentity