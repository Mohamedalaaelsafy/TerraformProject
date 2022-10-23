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
  type = string
}
variable "subnet_name" {
  type = list(any)
}
variable "subnet_1_public" {
  type = string
}
variable "subnet_1_private" {
  type = string 
}
variable "subnet_2_public" {
  type = string
}
variable "subnet_2_private" {
  type = string
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

