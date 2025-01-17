variable "ami_id" {
  default     = "ami-09c813fb71547fc4f"
  description = "This is ami id of devops group"
}

variable "instance_type" {
   default = "t3.micro"
}
variable "common_tags" {
  default     = {
    Name = "terraform"
    Project = "expense"
    Environment = "dev"
    
  }
  
}

# variable "environment" {
#   default     = "prod"

# }

variable "instance_names" {
  type        = list(string)
  default = ["mysql","backend","frontend"]
}

variable zone_id {
  type        = string
  default     = "Z09029931RLS4GGI08VA6"
  
}

variable domain_name {
  type        = string
  default     = "aws-devops81s.online"
  
}

