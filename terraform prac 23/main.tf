resource "aws_vpc" "trunks-VPC" {
  cidr_block = var.trunks-vpc-info.vpc_cidr
  tags = {
    Name = "Trunks-VPC"
  }
}

resource "aws_subnet" "subnets" {
  count             = length(var.trunks-vpc-info.subnet_names)
  cidr_block        = cidrsubnet(var.trunks-vpc-info.vpc_cidr, 8, count.index)
  availability_zone = "${var.region}${var.trunks-vpc-info.subnets_azs[count.index]}"
  vpc_id            = aws_vpc.trunks-VPC.id
  tags = {
    Name = var.trunks-vpc-info.subnet_names[count.index]
  }
  depends_on = [
    aws_vpc.trunks-VPC
  ]
}
