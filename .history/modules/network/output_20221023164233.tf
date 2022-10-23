output "vpc_id" {
  value = aws_vpc.name.id
  }

output "supnet_id" {
    value = aws_subnet.main[count.index].id
}

