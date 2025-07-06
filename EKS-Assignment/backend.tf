terraform {
  backend "s3" {
    bucket         = "polaris21"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
  }
}
