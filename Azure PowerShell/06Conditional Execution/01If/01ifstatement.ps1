$RG = "dev"
if ($rg -eq "dev")
{
  New-AzResourceGroup -Name $RG  -Location eastus
}