resource "aws_vpc" "trunks-vpc" {
    cidr_block = "192.168.0.0/16"
    tags = {
      Name = "trunks-vpc" 
    }
  
}