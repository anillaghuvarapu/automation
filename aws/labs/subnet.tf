resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.MyVPC.id
  cidr_block = "10.0.0.0/23"
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.MyVPC.id
  cidr_block = "10.0.2.0/23"
}
