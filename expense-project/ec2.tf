resource "aws_security_group" "expense" {
    name="allow_allll"
    description="creating the security group for the expense project"

    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress{
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
      Name = "terraform"
    }
  
}

resource "aws_instance" "expense" {
    count=length(var.instances_names)
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.expense.id]

    tags = {
      Name= var.instances_names[count.index]
    }
  
}