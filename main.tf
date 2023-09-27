provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "test_instance" {

  ami                    = "ami-03a6eaae9938c858c" #Amazon_AMI for testing
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0a48ba209d204976c"]   #default SQ group
  subnet_id              = "subnet-0c78b680152c9090c" #resource-1 subnet
  tags = {
    name = "Instance-1"
  }

}
