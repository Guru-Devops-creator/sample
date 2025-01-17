variable "instances" {
  default = {
    mysql    = "t3.small"
    frontend = "t3.micro"
    backend  = "t3.micro"
  }
}

variable "domain_name" {
  default = "aws-devops81s.online"
}

variable "zone_id" {
  type    = string
  default = "Z09029931RLS4GGI08VA6"

}