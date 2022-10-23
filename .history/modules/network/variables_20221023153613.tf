variable "vpc_cider_block" {
  type = string
}
variable "vpc_tags" {
  default = { 
    Name = "terraform"
  }
}

variable "vpc_count" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "cidr_block" {
   type = string
}
variable "availability_zone" {
   type = string
}