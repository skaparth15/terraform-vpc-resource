output "zone_availables" {
  value = data.aws_availability_zones.available
}

output "vpc_id" {
  value = aws_vpc.vpc-expense.id
}