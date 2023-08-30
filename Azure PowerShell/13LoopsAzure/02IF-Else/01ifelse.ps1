param(
    [Parameter(Mandatory)][string]$SubscriptionName,
    [Parameter(Mandatory)][ValidateSet('eastus','centralindia')][string]$location,
    [Parameter(Mandatory)][string]$resourceGroup,
    [Parameter(Mandatory)][string]$vnetName,
    [Parameter(Mandatory)][string]$nsgName,
    [Parameter(Mandatory)][string]$VMName
)

# set subscription
Set-AzContext -Subscription $SubscriptionName

# check and create resource group
Get-AzResourceGroup -Name $resourceGroup -ErrorVariable notPresent -ErrorAction SilentlyContinue
if ($notPresent)
{
    New-AzResourceGroup -Name $resourceGroup -Location $location -Force
}
else
{
    write-host "ResourceGroup exist"
}

# check  and create vnet and subnet
Get-AzVirtualNetwork -Name $vnetName -ResourceGroupName $resourceGroup -ErrorVariable notPresent -ErrorAction SilentlyContinue
if ($notPresent)
{
    $frontendSubnet = New-AzVirtualNetworkSubnetConfig -Name frontendSubnet -AddressPrefix "10.0.0.0/24"
    New-AzVirtualNetwork -Name $vnetName -ResourceGroupName $resourceGroup -Location $location -AddressPrefix "10.0.0.0/16" -Subnet $frontendSubnet
}
else
{
    write-host "Virtual Network exist"
}

#check and create nsg
Get-AzNetworkSecurityGroup -Name $nsgName -ResourceGroupName $resourceGroup -ErrorVariable notPresent -ErrorAction SilentlyContinue
if ($notPresent)
{
    $rdprule = New-AzNetworkSecurityRuleConfig -Name rdp-rule -Description "Allow RDP" `
    -Access Allow -Protocol Tcp -Direction Inbound -Priority 100 -SourceAddressPrefix `
    Internet -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 3389
    New-AzNetworkSecurityGroup -Name $nsgName -ResourceGroupName $resourceGroup  -Location  $location -SecurityRules $rdprule
}
else
{
    write-host "Security Group exist"
    Get-AzNetworkSecurityGroup -Name $nsgName -ResourceGroupName $resourceGroup | Get-AzNetworkSecurityRuleConfig -Name "RDP-rule" -ErrorVariable notPresent -ErrorAction SilentlyContinue
    if ($notPresent)
    {
        $networkSecurityGroup = Get-AzNetworkSecurityGroup -Name $nsgName -ResourceGroupName $resourceGroup

        Add-AzNetworkSecurityRuleConfig -Name RDP-rule -NetworkSecurityGroup $networkSecurityGroup `
        -Description "Allow RDP" -Access Allow -Protocol Tcp -Direction Inbound -Priority 300 `
        -SourceAddressPrefix * -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 3389

        Set-AzNetworkSecurityGroup -NetworkSecurityGroup $networkSecurityGroup
    }
    else
    {
        write-host "Security rule exists"
    }
}


## create VM

$VMLocalAdminUser = "devops"
$VMLocalAdminSecurePassword = ConvertTo-SecureString "India@123456" -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential ($VMLocalAdminUser, $VMLocalAdminSecurePassword);

Get-AzVM -ResourceGroupName $resourceGroup -Name $VMName -ErrorVariable notPresent -ErrorAction SilentlyContinue
if ($notPresent)
{
    New-AzVM `
    -Name $VMName `
    -ResourceGroupName $resourceGroup `
    -Location $location `
    -Credential $Credential `
    -VirtualNetworkName $vnetName `
    -SubnetName frontendSubnet `
    -Image Win2016Datacenter `
    -PublicIPAddressName mypublicipaddress
}
else
{
    write-host "Virtual Machine exist"
}
