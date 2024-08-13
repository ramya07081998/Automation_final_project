output "N01653241_Rg_name" {
  value = module.resource_group.rg_output.name
}

output "N01653241_Rg_location" {
  value = module.resource_group.rg_output.location
}

output "N01653241-virtual_network" {
  value = module.networking.vnet_name-op.name
}

output "N01653241-vnet_address_space" {
  value = module.networking.vnet_name-op.address_space
}

output "N01653241_subnet_name" {
  value = module.networking.subnet_name-op.name
}

output "N01653241-subnet_id" {
  value = module.networking.subnet_name-op.id
}

output "N01653241-log_analytics_workspace_name" {
  value = module.common_services.common_service-op.name
}

output "N01653241-recovery_services_vault_name" {
  value = module.common_services.recovery_vault-op.name
}

output "N01653241-storage_account_name" {
  value = module.common_services.standard_storage-op.name
}

output "N01653241-storage_account-primary_blob_endpoint" {
  value = module.common_services.storage_account-primary_blob_endpoint
}

output "N01653241-linux_vm_hostname" {
  value = module.linux_vm.host
}

output "N01653241-linux_vm_fqdn" {
  value = module.linux_vm.linux_vm_fqdn
}

output "N01653241-linux_private_ip_address" {
  value = module.linux_vm.privateIP
}

output "N01653241-linux_public_ip_address" {
  value = module.linux_vm.publicIP
}

output "N01653241-vmlinux-nic-ids" {
  value = module.linux_vm.linux-nic
}

output "N01653241-vmwindows-hostname" {
  value = module.windows_vm.host
}

output "N01653241-vmwindows-fqdn" {
  value = module.windows_vm.windows_vm_fqdn
}

output "N01653241-vmwindows-private-ip" {
  value = module.windows_vm.privateIP-windows
}

output "N01653241-vmwindows-public-ip" {
  value = module.windows_vm.publicIP-windows
}

output "N01653241-vmwindows-nic-ids" {
  value = module.windows_vm.windows_nic_id
}

output "N01653241-datadisk_name" {
  value = module.data_disk.datadisk-op
}
output "N01653241-loadbalancer-public-ip" {
  value = module.loadbalancer.lb-public-ip
}

output "N01653241-loadbalancer-name" {
  value = module.loadbalancer.lb-op
}
