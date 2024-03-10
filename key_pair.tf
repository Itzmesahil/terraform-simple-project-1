resource "aws_key_pair" "aws_key" {
  key_name   = "aws-key"
  public_key = file("${path.module}/id_rsa.pub")
}