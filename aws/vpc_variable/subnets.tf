resource "aws_subnet" "myprivatesubnet" {
  vpc_id                  = aws_vpc.primitivedev.id
  cidr_block              = var.private_subnet_cidr
  map_public_ip_on_launch = false
}

resource "aws_subnet" "mypublicsubnet" {
  vpc_id                  = aws_vpc.primitivedev.id
  cidr_block              = var.public_subnet_cidr
  map_public_ip_on_launch = true
}
