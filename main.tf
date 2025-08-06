module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  vpc_name = "main-vpc"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "vpc-main"
  }
}

module "ec2" {
    source = "./modules/ec2"
    ami_id = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"
    public_subnet_id = module.vpc.public_subnets[0]
    key_name = "my-key"
  
}

data "aws_security_group" "default" {
  filter {
    name   = "vpc-id"
    values = [module.vpc.vpc_id]
  }
  filter {
    name   = "group-name"
    values = ["default"]
  }
}

module "alb" {
  source = "./modules/alb"
  vpc_id = module.vpc.vpc_id
  alb_sg_id = data.aws_security_group.default.id
  subnets = module.vpc.public_subnets
}

module "asg" {
  source = "./modules/asg"
  subnets = module.vpc.private_subnets
  launch_template_id = module.ec2.launch_template_id
  target_group_arn = module.alb.target_group_arn
  vpc_id = module.vpc.vpc_id
}