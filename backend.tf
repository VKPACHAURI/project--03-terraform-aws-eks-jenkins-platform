terraform {
  backend "s3" {
    bucket         = "project03-terraform-state-vishesh-2026"
    key            = "eks-platform/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "project03-terraform-lock"
    encrypt        = true
  }
}

