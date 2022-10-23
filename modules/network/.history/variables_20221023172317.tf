variable "region" {
  type = string
}

variable "cidr_block" {
  type = string
}


variable "subnet_cidr" {
  type = list(any)
}
variable "subnet_azs" {
  type = list(any)
}
variable "subnet_name" {
  type = list(any)
}


variable "sg_name" {
  type = list(any)
}
variable "sg_desc" {
  type = list(any)
}
variable "sg_tags" {
  type = list(any)
}
variable "sg_ports" {
  type = list(any)
}
local {
  default = ["${aws_subnet.main[count.index]}"]
}