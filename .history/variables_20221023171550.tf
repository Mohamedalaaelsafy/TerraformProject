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
variable "ec2_ami" {
  type = string
}


variable "db_name" {
  type = string
}
variable "db_cluster_type" {
  type = string
}
variable "db_username" {
  
}
variable "db_password" {
  type = string 
}

variable "elasticache_node_type" {
  type = string
}
variable "elasticache_engine" {
  type = string
}
variable "elasticache_node_no" {
  type = number
}