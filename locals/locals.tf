locals {
    zone_id = "Z09029931RLS4GGI08VA6" 
    domain_name = "aws-devops81s.online"
    instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
} 