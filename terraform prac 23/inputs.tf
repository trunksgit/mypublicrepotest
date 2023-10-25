variable "region" {
  type        = string
  default     = "us-east-1"
  description = "Region to be created in Custome Area"
}

variable "trunks-vpc-info" {
  type = object({
    vpc_cidr = string
    subnets_azs = list(string)
    subnet_names =  list(string)
  })

  default = {
    vpc_cidr = "192.168.0.0/16"
    subnets_azs = [ "a", "b", "a", "b" ]
    subnet_names = [ "app1", "app2", "db1", "db2" ]
  }

}