module storage '01module.bicep' = {
  name: 'mystorage'
  params: {
    storageAccountName: 'devopsbychandu4'
  }
}

module nsg '02NSG.bicep' = {
  name: 'mynsg'
  params: {
    nsgname: 'devnsg'
  }
}
