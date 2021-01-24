
resource "aws_instance" "MyFirstInstance" {
    count=3
    ami = "ami-04e9aec1ab665f323"
    instance_type = "t2.micro"

    tags={
        Name="threedemoinstance"
    }
}
