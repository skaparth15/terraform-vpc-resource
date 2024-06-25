resource "aws_subnet" "database-expense" {
  count = length(var.database_subnet_cidrs)
  vpc_id     = aws_vpc.vpc-expense.id
  cidr_block = var.database_subnet_cidrs[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]


  tags = {
    Name = "${var.database_subnet_name}-${ data.aws_availability_zones.available.names[count.index]}"
  }
  }


  resource "aws_db_subnet_group" "default" {
  name       = var.frontend_subnet_group_name
  subnet_ids = aws_subnet.database-expense[*].id

  tags = {
    Name = "expense-database"
  }
}
