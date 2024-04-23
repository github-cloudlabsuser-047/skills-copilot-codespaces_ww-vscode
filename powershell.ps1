# Connect to Azure
Connect-AzAccount

# Set variables
$resourceGroupName = "myResourceGroup"
$storageAccountName = "myStorageAccount"
$location = "eastus"
$sku = "Standard_LRS"

# Create a new resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName -Location $location -SkuName $sku

# Output the storage account connection string
$storageAccount = Get-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName
$connectionString = $storageAccount.Context.ConnectionString
Write-Output "Storage account connection string: $connectionString"