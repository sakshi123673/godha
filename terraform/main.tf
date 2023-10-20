provider "aws" {
region = "ap-southeast-2"
access_key = "AKIAXFOFGNIUOTFV5FM5"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-023e1b810cda5ce69"
instance_type = "t2.micro"
key_name = "oct20"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project_instance"
}
}
