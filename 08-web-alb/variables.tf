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
      component = "web-alb"
    }
     
}

variable "zone_name" {
    default = "daws.info"
}