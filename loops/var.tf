variable "sg_group_name" {
    type=string
    default = "allow_sshhh"
}

variable "sg_description" {
    type = string
    default = "security group for the terraform instance"
}

variable "ami" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type=string
    default ="t3.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "backend"
        Description="terraform"
    }
}

variable "instances_names" {
    type = list(string)
    default = [ "mysql", "backend", "frontend" ]
}