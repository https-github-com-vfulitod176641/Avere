variable "node_address" {
    description = "The address of controller or jumpbox"
}

variable "admin_username" {
  description = "Admin username on the controller or jumpbox"
  default = "azureuser"
}

variable "admin_password" {
  description = "(optional) The password used for access to the controller or jumpbox.  If not specified, ssh_key_data needs to be set."
  default = null
}

variable "ssh_key_data" {
  description = "(optional) The public SSH key used for access to the controller or jumpbox.  If not specified, the password needs to be set.  The ssh_key_data takes precedence over the password, and if set, the password will be ignored."
}

variable "jobMount_address" {
    description = "the mount address for warm job processing"
}

variable "job_export_path" {
    description = "the export path for warm job processing"
}

variable "job_base_path" {
    description = "the warm job processing path, writeable by the manager for job queueing."
}

variable "warm_mount_addresses" {
    description = "the warm target cache filer mount addresses separated by comma"
}

variable "warm_target_export_path" {
    description = "the warm target export path"
}

variable "warm_target_path" {
    description = "the target path to warm"
}

variable "module_depends_on" {
  default = [""]
  description = "depends on workaround discussed in https://discuss.hashicorp.com/t/tips-howto-implement-module-depends-on-emulation/2305/2"
}