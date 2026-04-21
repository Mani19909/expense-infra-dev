variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "common_tags" {
    default = {
      project = "expense"
      environment = "dev"
      Terraform = "true"
      component = "backend"
    }
     
}

variable "vault_password" {
  description = "The password for Ansible Vault"
  type        = string
  default     = "ExpenseApp1" # Replace with your actual vault password
}

variable "zone_name" {
    default = "daws.info"
}