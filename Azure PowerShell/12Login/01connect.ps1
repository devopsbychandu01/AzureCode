# connect to user account
get-azcontext
Connect-AzAccount
Connect-AzureRmAccount
DisConnect-AzAccount

## connect to service principle
$SecurePassword = ConvertTo-SecureString -String "X4u8Q~NoBg0Fo2K4HI2OstUJE~GToQwhRlEn7a_L" -AsPlainText -Force
$TenantId = 'b1f0c119-8d8d-4dcd-aff5-ce30199f40ad'
$ApplicationId = 'a57fbb90-d668-4faa-ba91-c7e62e496970'
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $ApplicationId, $SecurePassword
Connect-AzAccount -ServicePrincipal -TenantId $TenantId -Credential $Credential

## connect using system managed identity
Connect-AzAccount -Identity
Set-AzContext -Subscription Subscription1

## connect using user managed idnetity
$identity = Get-AzUserAssignedIdentity -ResourceGroupName 'dev' -Name 'mymanagedidentity'
Get-AzVM -ResourceGroupName dev -Name devvm | Update-AzVM -IdentityType UserAssigned -IdentityId $identity.Id
Connect-AzAccount -Identity -AccountId $identity.ClientId # Run on the virtual machine