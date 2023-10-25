resource "aws_vpc" "trunks-vpc" {
    cidr_block = var.cidr_block
    tags = {
      Name = "trunks-vpc" 
    }  
}