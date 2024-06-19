resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.expense.id
  subnet_id     = aws_subnet.frontend-expense[0].id

  tags = {
    Name = "expense-nat"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}