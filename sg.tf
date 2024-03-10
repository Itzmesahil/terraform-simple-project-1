# Define security group
resource "aws_security_group" "my_security_group" {
  name        = "my-security-group"
  description = "My security group description"
  vpc_id      = aws_vpc.project.id

  dynamic "ingress" {
    for_each = [22,80,8080,]
    iterator = "port"
    content {
      from_port   = "port.balue"
    to_port     = "port.value"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow inbound traffic from anywhere on port 
    }
  }

  # Define egress rules (outbound traffic)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "my-security-group"
  }
}