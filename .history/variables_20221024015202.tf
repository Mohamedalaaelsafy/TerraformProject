//REGION
variable "region" {
  type = string
}

//AZ
variable "az_1a" {
  type = string
}
variable "az_1b" {
  type = string
}

//IMAGE ID
variable "ec2_ami" {
  type = string
}

//RDS
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

//ELASTICACHE
variable "elasticache_node_type" {
  type = string
}
variable "elasticache_engine" {
  type = string
}
variable "elasticache_node_no" {
  type = number
}