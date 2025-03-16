output "instance_ids" {
  value = aws_instance.my_instances[*].id
}

output "public_ips" {
  value = aws_instance.my_instances[*].public_ip
}

output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "subnet_id" {
  value = aws_subnet.my_subnet.id
}

output "security_group_id" {
  value = aws_security_group.my_security_group.id
}