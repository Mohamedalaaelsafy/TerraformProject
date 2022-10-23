variable "region" {
  type = string
}

variable "cidr_block" {
  type = string
  default = "11.0.0.0/16"
}


variable "subnet_cidr" {
  type = list(any)
}
variable "subnet_azs1" {
  type = string
}
variable "subnet_azs2" {
  type = string
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
variable "sg_port_ssh" {
  type = number
  default = 22
}
variable "sg_port_app" {
  type = number
  default = 3000
}