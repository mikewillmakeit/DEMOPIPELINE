provider "aws" {
    profile = "default"
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = "ami-0781cf90f9cef3437"
    instance_type = "t2.micro"
    "key_name" = "mike"
    "security_groups" = "launch-wizard-1"
}
}