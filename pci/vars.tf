variable "ou_name_va_holding" {
  description = "The Name of OU"
  default = "VA-Holdings"
}
variable "ou_name_pci_master" {
  description = "The Name of OU"
  default = "pci-master"
}

variable "policy_path" {
  description = "Path to the policy template file"
  default = "."
}
data "template_file" "role_policy" {
    template = "${file("${var.policy_path}/role_policy.tpl")}"
    vars = {
   }
}
data "template_file" "trust_policy" {
    template = "${file("${var.policy_path}/trust_policy.tpl")}"
    vars = {
   }
}
