module storagemodule '01.bicep' = {
  name: 'storage'
  params: {
    storageAccountName: 'cloudcomputintelugu09'
    location: 'eastus'
  }
}
module nsgmodule '02.bicep' = {
  name: 'nsg'
  params: {
    nsgname: 'devnsg'
  }
}
