variable "m_rolename"{
  description ="Role name"
}
variable "m_policy_name"{
  description = "Policy name"
}
variable "m_trust_policy"{
  description = "Trust relationship policy"
  default     = ""
}
variable "m_path"{
  description = "Path"
  default     = "/"
}

variable "m_policy"{
  description = "Policy template file"
  default = ""
}
variable "m_instance_profile"{
  description = "Instance Profile"
}
