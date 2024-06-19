resource "aws_route_table_association" "frontend-expense" {
  count = length(var.frontend_subnet_cidrs)
  subnet_id      = aws_subnet.frontend-expense[count.index].id
  route_table_id = aws_route_table.frontend-expense.id
}

resource "aws_route_table_association" "backend-expense" {
    count = length(var.backend_subnet_cidrs)
  subnet_id      = aws_subnet.backend-expense[count.index].id
  route_table_id = aws_route_table.backend-expense.id
}

resource "aws_route_table_association" "database-expense" {
    count = length(var.database_subnet_cidrs)
  subnet_id      = aws_subnet.database-expense[count.index].id
  route_table_id = aws_route_table.database-expense.id
}


