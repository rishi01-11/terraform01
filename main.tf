module "ec2" {
    source = "./modules/ec-2"
    instance_type = var.instance_type
    public_subnets = module.vpc.public_subnets[0]
    depends_on = [ module.vpc ]
}  

module "vpc" {
    source = "./modules/vpc"
}