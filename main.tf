/*
 * -----------------------------------------------------------------------------
 * Filename: main.tf
 * Purpose: Provision Azure Resources
 * Author: Reda Mastouri
 * Release Date: April 20, 2024
 * Version: 1.0.0
 * Description:
 *   The script is part of the larger project aiming to
 *   automate infrastructure setup for production environments in Azure.
 * 
 *   Key Components:
 *     - See the script below * 
 * Usage:
 *   - touch main.tf
 *   - run terraform fmt  # this cleans and beautifies the code
 *   - Initialize Terraform: sudo terraform init  # this creates a local backend as everything would be stored in this current path
 *   ==> now that we get a .terraform compiled file, this would be used to communicate with Azure API. there is also HCL file to contraint the version that we initialize
 *   - Validate the configuration: terraform validate
 *   - Apply the configuration: terraform apply
 * 
 * Dependencies:
 *   - Azure CLI or appropriate credentials configured
 *   - Terraform v0.14 or newer
 * 
 * Change Log:
 *   - 1.0.0: Initial release
 * -----------------------------------------------------------------------------
 */


## Let's get started 
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.91.0"
    }
  }
}

## Specifying the provider 
provider "azurerm" {
  feature {}
}