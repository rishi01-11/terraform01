module "ec2" {
  source         = "./modules/ec-2"
  instance_type  = var.instance_type
  public_subnets = module.vpc.public_subnets[0]
  depends_on     = [module.vpc]
  profile_name   = var.profile_name
}

module "vpc" {
  source = "./modules/vpc"
}

module "ec2_instances" {
  source = "./modules/ec2-instances"
  instance_configuration = [ 
    { 
        ami_id = ""
        instance_type = ""
    },
    { 
        ami_id = ""
        instance_type = ""
    },
    { 
        ami_id = ""
        instance_type = ""
    }
  ]
}