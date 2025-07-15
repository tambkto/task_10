module "vpc" {
  source = "./vpc"
  vpc_cidr = var.vpc-cidr
  cidr_allowing_all = var.cidr-allowing-all
  public_subnet_cidr = var.public-subnet-cidr
  private_subnet_cidr = var.private-subnet-cidr
  owner_name = "Umar"
  providers = {
    aws = aws.ohio
  }
}
module "iam" {
  source = "./iam"
  providers = {
    aws = aws.ohio
  }
}
module "beanstalk" {
  source = "./beanstalk"
  private_subnet = module.vpc.private_subnet
  public_subnet = module.vpc.public_subnet
  vpc_id = module.vpc.vpc_id
  instance_profile = module.iam.instance_role_name
  service_role_arn = module.iam.service_role_arn
  instance_type = var.instance-type
  providers = {
    aws = aws.ohio
  }
}