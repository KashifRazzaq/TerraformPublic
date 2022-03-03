# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "KR_GITRG"
  location = "Australia East"
  
  tags = {
      "Environment" = "test",
      "Resource Owner" = "Kashif",
      "Project Name" = "KRTest",
      "Developer" = "Kashif"

  }
}