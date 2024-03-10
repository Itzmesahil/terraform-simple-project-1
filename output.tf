output "my_vpc_id" {
  value = aws_vpc.project.id
}

output "my_security_group" {
  value = aws_security_group.my_security_group.id
}

output "key_pair" {
  value = aws_key_pair.aws_key.id
}