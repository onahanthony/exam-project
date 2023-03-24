resource "aws_route_table" "public1" {
  vpc_id = aws_vpc.main1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public1"
  }
}

resource "aws_route_table_association" "private_us_1" {
  subnet_id      = aws_subnet.private_us_1.id
  route_table_id = aws_route_table.private1.id
}

resource "aws_route_table_association" "private_us_2" {
  subnet_id      = aws_subnet.private_us_2.id
  route_table_id = aws_route_table.private2.id
}

resource "aws_route_table_association" "public_us_1" {
  subnet_id      = aws_subnet.public_us_1.id
  route_table_id = aws_route_table.public1.id
}

resource "aws_route_table_association" "public_us_2" {
  subnet_id      = aws_subnet.public_us_2.id
  route_table_id = aws_route_table.public1.id
}
