# Connect To Azure CLI
az login

# Help command
az --help or az --h

# Manage account
az account

# Manage Resource Groups
az group

# Create Resource Group
az group create

# List Resource Groups
az group list
az group create --name VMGroup1 --location eastus

# Output names in the resource group
az group list --query "[].name"

# Filter group by name and location
az group list --query "[].{resourceGroupname:name,location:location}"

# Filter by location

az group list --query "[?location== 'location name']".name

# Format output by table, csv, jsonc, etc (Formatting by table)

az group list -o table

# Putting it all together to provide a nice output of the location and resource

az group list --query "[].{resourceGroupname:name,location:location}" -o table

# Creating a VNET

#Attach a Subnet and connecting it to the VNet
