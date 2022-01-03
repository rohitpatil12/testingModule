
resource "azurerm_storage_account" "storage_account" {
  name                     = var.name
  resource_group_name      = var.rgname
  location                 = "eastus"
  account_kind             = "StorageV2"
  account_tier             = var.tier
  account_replication_type = var.replica_type
  network_rules {
    default_action             = "Deny"
    ip_rules                   = []
    virtual_network_subnet_ids = []
    bypass                     = ["None"]
  }
  allow_blob_public_access = "false"
  is_hns_enabled = "false"
 
}