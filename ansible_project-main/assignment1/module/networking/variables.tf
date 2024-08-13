variable "rg_name-3241" {
  type = string
}

variable "rg_location-3241" {
  type = string
}

variable "vnet" {
  default = "n01653241-vnet"
}

variable "subnet" {
  default = "n01653241-subnet"
}

variable "vnet_space" {
  default = ["10.0.0.0/16"]
}

variable "subnet_space" {
  default = ["10.0.0.0/24"]
}

variable "network_sg" {
  default = "n01653241-security_group"
}

variable "common_tags" { }

