resource "aws_route_table" "frontend-expense" {
  vpc_id = aws_vpc.vpc-expense.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "frontend-expense"
  }
}

resource "aws_route_table" "backend-expense" {
  vpc_id = aws_vpc.vpc-expense.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "backend-expense"

  }
}


resource "aws_route_table" "database-expense" {
  vpc_id = aws_vpc.vpc-expense.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "database-expense"
  }
}








