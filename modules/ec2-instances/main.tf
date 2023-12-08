resource "aws_instance" "test" {
  count = length(var.instance_configuration)
  ami = var.instance_configuration.[count.index].ami_id
  instance_type = var.instance_configuration.[count.index].instance_type
}