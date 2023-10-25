resource "aws_vpc" "trunks-VPC" {
  cidr_block = var.trunks-vpc-range
  tags = {
    Name = "Trunks-VPC"
  }
}

resource "aws_subnet" "app1" {
  cidr_block        = var.trunks-app1-cidr
  availability_zone = "${var.region}a"
  vpc_id            = aws_vpc.trunks-VPC.id
  tags = {
    Name = "App1"
  }
  depends_on = [
    aws_vpc.trunks-VPC
  ]
}

resource "aws_subnet" "app2" {
  cidr_block        = var.trunks-app2-cidr
  availability_zone = "${var.region}b"
  vpc_id            = aws_vpc.trunks-VPC.id
  tags = {
    Name = "App2"
  }
  depends_on = [
    aws_vpc.trunks-VPC
  ]
}

resource "aws_subnet" "db1" {
  cidr_block        = var.trunks-db1-cidr
  availability_zone = "${var.region}a"
  vpc_id            = aws_vpc.trunks-VPC.id
  tags = {
    Name = "DB1"
  }
  depends_on = [
    aws_vpc.trunks-VPC
  ]
}

resource "aws_subnet" "db2" {
  cidr_block        = var.trunks-db2-cidr
  availability_zone = "${var.region}b"
  vpc_id            = aws_vpc.trunks-VPC.id
  tags = {
    Name = "DB2"
  }
  depends_on = [
    aws_vpc.trunks-VPC
  ]
}
       
