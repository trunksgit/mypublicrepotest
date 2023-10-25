variable "region" {
  type        = string
  default     = "us-east-1"
  description = "Region to be created in Custome Area"
}

variable "trunks-vpc-range" {
  type        = string
  default     = "192.168.0.0/16"
  description = "VPC Cidr Range"
}

variable "trunks-subnets-cidr" {
  type    = list(string)
  default = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
}

variable "trunks-subnets-azs" {
  type    = list(string)
  default = ["a", "b", "a", "b"]
}

variable "trunks-subnets-names" {
  type    = list(string)
  default = ["app1", "app2", "db1", "db2"]
}
