variable "instance_names" {
  type    = list(string)
  default = ["mysql", "frontend", "backend"]

}

variable "domain_name" {
  default = "aws-devops81s.online"
}

variable "zone_id" {
  type    = string
  default = "Z09029931RLS4GGI08VA6"

}