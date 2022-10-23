variable "region" {
  type = string
}

variable "cidr_block" {
    type = string
}


variable "subnet_cidr" {
  type = list
}
variable "subnet_azs" {
  type = list
}
variable "subnet_name" {
  type = list
}


variable "sg_name" {
    type = list
}
variable "sg_desc" {
    type = list
}
variable "sg_tags" {
    type = list
}
variable "sg_ports" {
        type = list
}

variable "ec2_names" {
  type = list
}