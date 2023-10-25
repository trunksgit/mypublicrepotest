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

variable "trunks-app1-cidr" {
  type    = string
  default = "192.168.0.0/24"
}

variable "trunks-app2-cidr" {
  type    = string
  default = "192.168.1.0/24"
}

variable "trunks-db1-cidr" {
  type    = string
  default = "192.168.2.0/24"
}

variable "trunks-db2-cidr" {
  type    = string
  default = "192.168.3.0/24"
}
