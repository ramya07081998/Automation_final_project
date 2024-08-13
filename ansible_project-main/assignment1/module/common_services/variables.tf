variable "log_name" {
  default = "ramyalog"
}

variable "rg_name-3241" {

}

variable "log_sku" {
  default = "PerGB2018"
}

variable "rg_location-3241" {

}
variable "log_retention" {
  default = "40"
}

variable "vault_name" {
  default = "ramyavault"
}

variable "vault_sku" {
  default = "Standard"
}

variable "storage_account_name" {
  default = "ramyastorage3241"
}

variable "common_tags" {}

variable "acc-tier" {
 default = "Standard"
}

variable "rep-type" {
 default = "LRS"
}
