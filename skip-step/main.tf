

provider "azurerm" {
  version = ">=2.0"
  # The "feature" block is required for AzureRM provider 2.x.
  features {}
}
terraform{
backend "azurerm" {
    resource_group_name  = "resourcegroup-tfstate"
    storage_account_name = "terraformtfstateskipqa"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "resourcegroup-test-tbd-4"
  location = "westeurope"
}
