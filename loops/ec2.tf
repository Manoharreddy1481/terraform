resource "aws_security_group" "Allow_sshhh_terraform" {
    name=var.sg_group_name
    description=var.sg_description

    egress{
        from_port = 0
        to_port = 0
        protocol =  "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks =["::/0"] 
   }

   ingress{
        from_port = 22
        to_port = 22
        protocol =  "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks =["::/0"] 
   }

   tags=var.tags


}

resource "aws_instance" "terraform" {

    count=3
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.Allow_sshhh_terraform.id]

    tags = {
        Name=var.instances_names[count.index]
    }
  
}