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



variable "sg_name1" {
  type = string
  default = "allow 22"
}
variable "sg_name2" {
  type = string
  default = "allow 22,3000"
}
variable "sg_desc1" {
  type = string
  default = "allow 22"
}
variable "sg_desc2" {
  type = string
  default = "allow 22,3000"
}
variable "sg_tag1" {
  type = string
  default = "sg_public"
}
variable "sg_tag2" {
  type = string
  default = "sg_private"
}
variable "sg_port_ssh" {
  type = number
  default = 22
}
variable "sg_port_app" {
  type = number
  default = 3000
}
