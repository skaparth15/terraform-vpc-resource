resource "aws_subnet" "backend-expense" {
  count = length(var.backend_subnet_cidrs)
  vpc_id     = aws_vpc.vpc-expense.id
  cidr_block = var.backend_subnet_cidrs[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]


  tags = {
    Name = "backend-expense-${ data.aws_availability_zones.available.names[count.index]}"
  }
  }
