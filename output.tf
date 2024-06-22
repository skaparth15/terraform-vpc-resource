output "zone_availables" {
  value = data.aws_availability_zones.available
}

output "vpc_id" {
  value = aws_vpc.vpc-expense.id
}


output "backend_subnet_id" {
  value = aws_subnet.backend-expense.id
}

output "database_subnet_id" {
  value = aws_subnet.database-expense.id
}

output "frontend-subnet-id" {
  value = aws_subnet.frontend-expense.id
}

