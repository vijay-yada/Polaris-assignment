module "vpc" {
  source = "../modules/VPC"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
  region               = var.region
}

module "eks" {
  source = "../modules/EKS"

  cluster_name           = var.cluster_name
  cluster_version        = var.cluster_version
  vpc_id                 = module.vpc.vpc_id
  private_subnet_ids     = module.vpc.private_subnet_ids
  node_group_desired_size = var.node_group_desired_size
  node_group_min_size    = var.node_group_min_size
  node_group_max_size    = var.node_group_max_size
  instance_types         = var.instance_types
  tags                   = var.tags
}
