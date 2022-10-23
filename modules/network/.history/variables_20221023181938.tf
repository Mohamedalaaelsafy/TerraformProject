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
  type = string
}



variable "sg_name" {
  type = string
}
variable "sg_desc" {
  type = string
}
variable "sg_tags" {
  type = string
}
variable "sg_ports" {
  type = number
}

