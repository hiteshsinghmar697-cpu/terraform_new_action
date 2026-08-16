module "rg" {
  source = "../../module/resource_group"
  rgs    = var.rgs
}

module "vnet" {
  source     = "../../module/virtual_network"
  vnet       = var.vnet
  depends_on = [module.rg]
}