vpc_cidr = "10.0.0.0/16"

public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24"
]

private_subnet_cidrs = [
  "10.0.101.0/24",
  "10.0.102.0/24",
  "10.0.103.0/24"
]

availability_zones = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c"
]

region = "us-east-1"

cluster_name    = "polaris-private-eks"
cluster_version = "1.29"

node_group_desired_size = 2
node_group_min_size     = 1
node_group_max_size     = 3

instance_types = ["t3.medium"]

tags = {
  Environment = "dev"
  Owner       = "polaris-eks"
}
