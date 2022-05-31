#!/bin/bash
resourceGroup="arm-vscode"
az group create --name $resourceGroup --location koreacentral
az deployment group create --resource-group $resourceGroup --name blanktemplate-$(date "+%Y-%m-%d") --template-file azuredeploy.json # --parameters azuredeploy.parameters.json
