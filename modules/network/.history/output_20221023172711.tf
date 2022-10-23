output "vpc_id" {
  value = aws_vpc.name.id
  }

output "supnet_id" {
    value = aws_subnet.main[count.index].id
}

output "security_group_id" {
   value = aws_security_group.allow_ssh[count.index].id
}

