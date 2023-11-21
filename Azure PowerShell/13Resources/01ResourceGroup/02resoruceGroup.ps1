Get-AzResourceGroup
Get-AzResourceGroup | Format-Table
Get-AzResourceGroup | Format-List
Get-AzResourceGroup | Format-Wide
Get-AzResourceGroup | Out-GridView
Get-AzResourceGroup | Out-GridView -PassThru

## select query
Get-AzResourceGroup | Select ResourceGroupName, Location

# filtering query
Get-AzResourceGroup | where-object {$_.Location -eq 'eastus'}

# filter and select query
Get-AzResourceGroup | where-object {$_.Location -eq 'eastus'} | Select ResourceGroupName, Location

## create a multi Line script
Get-AzResourceGroup | `
where-object {$_.Location -eq 'eastus'} | `
Select ResourceGroupName, Location

