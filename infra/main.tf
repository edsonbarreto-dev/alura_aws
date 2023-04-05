terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.27"
        }
    }
    required_version = ">= 0.14.9"
}

provider "aws" {
    profile = "default"
    region = var.region_aws
}

resource "aws_launch_template" "machine" {
    image_id = "ami-0fcf52bcf5db7b003"
    instance_type = "t2.micro"
    key_name = var.key_aws
    tags = {
        Name = var.instance_name
    }
    security_group_names = [ var.security_group ]
}

resource "aws_key_pair" "chaveSSH" {
    key_name = var.key_aws
    public_key = file("${var.key_aws}.pub")
}

output "ip_public" {
    value = aws_instance.app_server.public_ip
}