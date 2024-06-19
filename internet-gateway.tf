resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc-expense.id

  tags = {
    Name = var.aws_internet_gateway
  }
}