group=test
az group create -g $group -l centralindia
username=devops
password='India@123456'
az vm create \
  -n vm-centralindia \
  -g $group \
  -l centralindia \
  --image Win2019Datacenter \
  --admin-username $username \
  --admin-password $password \
  --nsg-rule rdp
  
az vm create \
  -n vm-eastus \
  -g $group \
  -l eastus \
  --image Win2019Datacenter \
  --admin-username $username \
  --admin-password $password \
  --nsg-rule rdp


az vm list \
  -g $group -d \
  --query "[].{name:name,ip:publicIps,user:osProfile.adminUsername,password:'$password'}" \
  -o jsonc