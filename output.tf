output "zone_availables" {
  value = data.aws_availability_zones.available
}

output "vpc_id" {
  value = aws_vpc.vpc-expense.id
}


output "backend_subnet_id" {
  value = aws_subnet.backend-expense[0].id
}

output "database_subnet_id" {
  value = aws_subnet.database-expense[0].id
}

output "frontend_subnet_id" {
  value = aws_subnet.frontend-expense[0].id
}


