output "subnet_1_public" {
  value = aws_subnet.subnet_1_public
}

output "subnet_2_public" {
  value = aws_subnet.subnet_2_public
}

output "subnet_1_private" {
  value = aws_subnet.subnet_1_public
}

output "subnet_2_private" {
  value = aws_subnet.subnet_2_private
}

output "security_group_shh" {
  value = aws_security_group.security_group_shh.id
}
output "security_group_app" {
  value = aws_security_group.security_group_app.id
}