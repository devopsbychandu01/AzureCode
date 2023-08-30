## create new VM
New-AzVM -ResourceGroupName dev -Location 'East US' -Name devvm -Image Ubuntu2204
# get the VM's inforrmations on the subscription.
Get-AzVM
# get vm details on a resource group test
Get-AzVM -ResourceGroupName dev
