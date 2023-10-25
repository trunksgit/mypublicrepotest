variable "region" {
  type = string
  default = "us-east-1"
  description = "Region to be created in Custome Area"
}

variable "cidr_block" {
    type = string
    default = "192.168.0.0/16"
    description = "VPC to be created in Custome Area"  
}