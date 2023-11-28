module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "first-instance"

  ami = "ami-022e1a32d3f742bd8"


  instance_type = var.instance_type
  #key_name               = "user1"
  monitoring = true
  #vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = var.public_subnets

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
