resource "aws_vpc" "trunks-VPC" {
  cidr_block = var.trunks-vpc-range
  tags = {
    Name = "Trunks-VPC"
  }
}

resource "aws_subnet" "subnets" {
  count             = length(var.trunks-subnets-cidr)
  cidr_block        = var.trunks-subnets-cidr[count.index]
  availability_zone = "${var.region}${var.trunks-subnets-azs[count.index]}"
  vpc_id            = aws_vpc.trunks-VPC.id
  tags = {
    Name = var.trunks-subnets-names[count.index]
  }
  depends_on = [
    aws_vpc.trunks-VPC
  ]
}
