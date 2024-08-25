resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "${var.batch_code}-vpc",
    CreatedBy = var.CreatedBy
  }
  
}

resource "aws_subnet" "public-this" {
  cidr_block = var.public_subnet_cidr
  vpc_id = aws_vpc.this.id
  availability_zone = var.availability_zone

  tags = {
    Name = "${var.batch_code}-public-subnet",
    CreatedBy = var.CreatedBy
  }
  
}

resource "aws_subnet" "private-this" {

  count = var.isPrivateSubnetNeeded ? 1 : 0

  cidr_block = var.private_subnet_cidr
  vpc_id = aws_vpc.this.id
  availability_zone = var.availability_zone

  tags = {
    Name = "${var.batch_code}-private-subnet",
    CreatedBy = var.CreatedBy
  }
  
}

resource "aws_route_table" "public-this" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this.id
  }
    
}

resource "aws_route_table" "private-this" {
  count = var.isPrivateSubnetNeeded ? 1 : 0
  vpc_id = aws_vpc.this.id
    
}

resource "aws_route_table_association" "public-this" {
  subnet_id = aws_subnet.public-this.id
  route_table_id = aws_route_table.public-this.id
  
}

resource "aws_route_table_association" "private-this" {
  count = var.isPrivateSubnetNeeded ? 1 : 0
  subnet_id = aws_subnet.private-this[0].id
  route_table_id = aws_route_table.private-this[0].id
  
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id
  
}