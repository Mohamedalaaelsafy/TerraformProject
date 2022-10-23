output "vpc_id" {
  value = aws_vpc.name.id
  } 

output "security_group_id_allow_ssh" {
   value = aws_security_group.allow_ssh.id
}
output "security_group_id_allow_ssh_app" {
  
}

output "subnet_1_public" {
  value = aws_subnet.subnet_1_public
}
output "subnet_1_private" {
  value = aws_subnet.subnet_1_private
}
output "subnet_2_public" {
  value = aws_subnet.subnet_2_public
}
output "subnet_2_private" {
  value = aws_subnet.subnet_2_private
}

