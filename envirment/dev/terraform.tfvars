rgs = {
  rg1 = {
    name     = "rg-dev"
    location = "south india"
  }
}
vnet = {
  vnet1 = {
    name                = "vnet-dev"
    location            = "south india"
    resource_group_name = "rg-dev"
    address_space       = ["10.0.0.0/16"]
  }
}