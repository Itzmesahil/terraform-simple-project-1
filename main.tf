resource "aws_instance" "web_app" {
  ami             = var.image
  instance_type   = var.instance_size
  key_name        = aws_key_pair.aws_key.id
  subnet_id       = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.my_security_group.id]
  tags = {
    Name = "Project-instance"
  }
  user_data = file("${path.module}/web-script.sh")
}