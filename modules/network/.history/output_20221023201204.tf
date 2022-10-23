output "vpc_id" {
  value = aws_vpc.name.id
}

output "security_group_id_allow_ssh" {
  value = aws_security_group.allow_ssh.id
}
output "security_group_id_allow_ssh_app" {
  value = aws_security_group.allow_ssh_vpc.id
}

output "subnet_1_pub" {
  value = aws_subnet.subnet_1_public.id
}
output "subnet_1_priv" {
  value = aws_subnet.subnet_1_private.id
}
output "subnet_2_pub" {
  value = aws_subnet.subnet_2_public.id
}
output "subnet_2_priv" {
  value = aws_subnet.subnet_2_private.id
}

