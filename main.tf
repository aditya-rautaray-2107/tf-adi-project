resource "aws_instance" "webapp" {
    ami = "ami-06b21ccaeff8cd686"
    associate_public_ip_address = true
    count = 1
    security_group = "sg-jsshshs"
    instance_type = "t2.micro"
    tags = {
      "Name" = "webapp"
    }
  
}