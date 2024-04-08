param storageAccountName string
param location string

resource ajguksstorage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
   sku: {
    name: 'Standard_LRS'
  }

  kind: 'StorageV2'
 
}

output storageAccountOutput string = ajguksstorage.id