variable "my_ports" {
  type    = list(number)
  default = [22, 8080, 443, 3306, 80, 443]
}

variable "image" {
  type    = string
  default = "ami-0f403e3180720dd7e"
}
variable "instance_size" {
  type    = string
  default = "t2.micro"
}
