provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "test_instance" {

  ami                    = "ami-0cdb8266fcd5d3d63" #centos8
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0a48ba209d204976c"]   #default SQ group
  subnet_id              = "subnet-0c78b680152c9090c" #resource-1 subnet
  tags = {
    name = "Instance-1"
  }

}
