group=test
az group create -g $group -l centralindia
username=adminuser
password='SecretPassword123!@#'
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

az appservice plan create \
  -n web-eastus-plan \
  -g $group \
  -l eastus \
  --sku S1
  
appname=demo-web-eastus-$RANDOM$RANDOM
az webapp create \
  -n $appname \
  -g $group \
  -p web-eastus-plan
  
az appservice plan create \
  -n web-centralindia-plan \
  -g $group \
  -l centralindia \
  --sku S1
  
appname=demo-web-centralindia-$RANDOM$RANDOM
az webapp create \
  -n $appname \
  -g $group \
  -p web-centralindia-plan
  
az webapp list -g $group --query "[].enabledHostNames" -o jsonc

az vm list \
  -g $group -d \
  --query "[].{name:name,ip:publicIps,user:osProfile.adminUsername,password:'$password'}" \
  -o jsonc
