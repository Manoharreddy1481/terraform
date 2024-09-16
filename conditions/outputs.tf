output "public_ip" {
value = aws_instance.terraform.public_ip
}

output "private_ip" {
value = aws_instance.terraform.private_ip
}

output "ami" {
value = aws_instance.terraform.ami
}

output "sg_group_name" {
value = aws_instance.terraform.security_groups
}