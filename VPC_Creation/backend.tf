# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket = "terraform-tf-mybkt"
    key    = "state/terraform.tfstate"
    region = "ap-south-1"
  }
}