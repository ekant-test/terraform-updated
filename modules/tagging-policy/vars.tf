variable "m_region" {
  type        = string
  default     = "ap-southeast-2"
  description = "the aws region to operate in"
}


#AWS ou_security_id organisation root ID value holder from module
variable "ou_security_id"{
  type = "string"
}

#AWS ou_infrastructure_id organisation root ID value holder from module
variable "ou_infrastructure_id"{
  type = "string"
}

#AWS ou_pci-workloads_id organisation root ID value holder from module
variable "ou_pci-workloads_id"{
  type = "string"
}

variable "m_env" {
  type        = string
  default     = "sandbox"
  description = "the aws region to operate in"
}

variable "m_ou_security" {
  type        = string
  default     = "security"
  description = "the aws region to operate in"
}
variable "m_ou_infrastructure" {
  type        = string
  default     = "infrastructure"
  description = "the aws region to operate in"
}
variable "m_ou_pci_workloads" {
  type        = string
  default     = "pci-workloads"
  description = "the aws region to operate in"
}
#AWS root organisation root ID value holder from module
variable "o_root_id"{
  type = "string"
}
