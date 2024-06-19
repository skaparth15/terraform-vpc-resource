resource "aws_subnet" "database-expense" {
  count = length(var.database_subnet_cidrs)
  vpc_id     = aws_vpc.vpc-expense.id
  cidr_block = var.database_subnet_cidrs[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]


  tags = {
    Name = "database-expense-${ data.aws_availability_zones.available.names[count.index]}"
  }
  }
