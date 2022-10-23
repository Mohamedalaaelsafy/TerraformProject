variable "region" {
  type = string
}

variable "cidr_block" {
  type = string
  default = "11.0.0.0/16"
}


variable "subnet_cidr1" {
  type = string
  default = "11.0.0.0/24"
}
variable "subnet_cidr2" {
  type = string
  default = "11.0.1.0/24"
}
variable "subnet_cidr3" {
  type = string
  default = "11.0.3.0/24"
}
variable "subnet_cidr4" {
  type = string 
  default = "11.0.4.0/24"
}
variable "subnet_azs1" {
  type = string
}
variable "subnet_azs2" {
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
