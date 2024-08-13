resource "null_resource" "ansible_playbook" {
  provisioner "local-exec" {
   command = "ansible-playbook -i hosts n01653241-playbook.yml"
   working_dir = "/home/N01653241/automation/ansible_project-main/ansible_project-main/ansible/"
  }
  depends_on = [
    module.resource_group,
    module.data_disk,
    module.linux_vm
  ]
}
