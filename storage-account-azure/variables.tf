variable "location" {
  description = "Azure region"
  type        = string
  default     = "West US 2"
}

variable "account_tier" {
  description = "Storange account tier on Azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Storange account replication type on Azure"
  type        = string
  default     = "LRS"
}
