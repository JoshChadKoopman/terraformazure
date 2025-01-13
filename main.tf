module "virtual_machine"{
    source                 = "./modules/virtual_machine"
    vm_name                = "example-vm"
    location               = var.location
    resource_group_name    = var.resource_group_name
}

module "storage_account" {
    source                 = "./modules/storage-account"
    storage_account_name   = "examplestorage"
    location               = var.location
    resource_group_name    = var.resource_group_name
}