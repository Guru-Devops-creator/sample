variable "ami_id" {
  default     = "ami-09c813fb71547fc4f"
  description = "This is ami id of devops group"
}

variable "instance_type" {
  # default = "t3.micro"
}
variable "tags" {
  default     = {
    Name = "terraform"
    Project = "expense"
    Environment = "dev"
    
  }
  
}