resource "ec2_instance" "my_machine" {
    ami = "ami-07d9b9ddc6cd8dd30"
    instance_type = "t2.micro"
    key_pair = aws_key_pair.aws_key.id
    vpc = "aws_vpc.project.id"
    security_group = "aws_security_group.my_security_group.id"
}