variable "ingress_rules" {
     default = [ 
    {
    from_port        = 22
    to_port          = 22
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    description = "opening for 22 port " # Default port number for SSH connections

  },

  {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    description = "opening for 80 port " # Default port number for HTTP conections
  },
  
  {
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    description = "opening for 8080 port " # default port number for web servers and application servers
  }

]
}