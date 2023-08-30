# connect to user account
get-azcontext
Connect-AzAccount
Connect-AzureRmAccount
DisConnect-AzAccount

## connect to service principle
$SecurePassword = ConvertTo-SecureString -String "c9R8Q~CeWYmXiNRTXfAp8AgkDM.lTfb1bgTZGbJS" -AsPlainText -Force
$TenantId = 'b1f0c119-8d8d-4dcd-aff5-ce30199f40ad'
$ApplicationId = '3f0165a8-d644-41a3-b0e4-8b966aab256d'
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $ApplicationId, $SecurePassword
Connect-AzAccount -ServicePrincipal -TenantId $TenantId -Credential $Credential

## connect using system managed identity
Connect-AzAccount -Identity
Set-AzContext -Subscription Subscription1

## connect using user managed idnetity
$identity = Get-AzUserAssignedIdentity -ResourceGroupName 'myResourceGroup' -Name 'myUserAssignedIdentity'
Get-AzVM -ResourceGroupName contoso -Name testvm | Update-AzVM -IdentityType UserAssigned -IdentityId $identity.Id
Connect-AzAccount -Identity -AccountId $identity.ClientId # Run on the virtual machine