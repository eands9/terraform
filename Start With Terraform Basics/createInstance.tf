provider "aws" {
    access_key = "AKIASFB2T2TYZ64QI65B"
    secret_key = "Secret_Key"
    region = "us-west-2"
}

resource "aws_instance" "MyFirstInstance" {
    ami = "ami-04e9aec1ab665f323"
    instance_type = "t2.micro"
}