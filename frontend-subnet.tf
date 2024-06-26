resource "aws_subnet" "frontend-expense" {
  count = length(var.frontend_subnet_cidrs)
  vpc_id     = aws_vpc.vpc-expense.id
  map_public_ip_on_launch = true
  cidr_block = var.frontend_subnet_cidrs[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]


  tags = {
    Name = "${var.frontend_subnet_name}-${ data.aws_availability_zones.available.names[count.index]}"
  }
  }
