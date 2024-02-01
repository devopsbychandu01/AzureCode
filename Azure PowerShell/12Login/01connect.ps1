# connect to user account
get-azcontext
Connect-AzAccount
Connect-AzureRmAccount
DisConnect-AzAccount
DisConnect-AzureRmAccount

## connect to service principle
$SecurePassword = ConvertTo-SecureString -String "VrR8Q~onSUv4CnfMB~2hGGwrRKjgaxJYEPV3rbvZ" -AsPlainText -Force
$TenantId = 'b1f0c119-8d8d-4dcd-aff5-ce30199f40ad'
$ApplicationId = 'b7deced3-cfcb-4125-8f65-4c4effca09ea'
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $ApplicationId, $SecurePassword
Connect-AzAccount -ServicePrincipal -TenantId $TenantId -Credential $Credential

## connect using system managed identity
Connect-AzAccount -Identity
Set-AzContext -Subscription Subscription1

## connect using user managed idnetity
# $identity = Get-AzUserAssignedIdentity -ResourceGroupName 'dev' -Name 'mymanagedidentity'
# Get-AzVM -ResourceGroupName dev -Name devvm | Update-AzVM -IdentityType UserAssigned -IdentityId $identity.Id
Connect-AzAccount -Identity -AccountId <clientID>