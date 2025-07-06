variable "vpc_cidr" {
  type = string
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "availability_zones" {
  type = list(string)
}

variable "region" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "cluster_version" {
  type = string
}

variable "node_group_desired_size" {
  type = number
}

variable "node_group_min_size" {
  type = number
}

variable "node_group_max_size" {
  type = number
}

variable "instance_types" {
  type = list(string)
}

variable "tags" {
  type = map(string)
}
