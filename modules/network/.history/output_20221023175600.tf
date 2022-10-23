output "vpc_id" {
  value = aws_vpc.name.id
  }

output "security_group_id" {
   value = aws_security_group.allow_ssh[count.index].id
}

output "subnet_1_public" {
  type = string
}
output "subnet_1_private" {
  type = string 
}
output "subnet_2_public" {
  type = string
}
output "subnet_2_private" {
  type = string
}

