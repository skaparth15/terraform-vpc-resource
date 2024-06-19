variable "vpc_name" {
    type = string
    default = "expense"
  
}

variable "aws_internet_gateway" {
    type=string
    default = "expense"
}

variable "frontend_subnet_cidrs"{
    type        = list(string)

  validation {
    condition     = length(var.frontend_subnet_cidrs) > 1
    error_message = "frontend subnet requires two cidrs"
  }
}


  variable "backend_subnet_cidrs"{
    type        = list(string)

  validation {
    condition     = length(var.backend_subnet_cidrs) > 1
    error_message = "backend subnet requires two cidrs"
  }
}


variable "database_subnet_cidrs"{
    type        = list(string)

  validation {
    condition     = length(var.database_subnet_cidrs) > 1
    error_message = "database subnet requires two cidrs"
  }
}






