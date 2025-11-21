terraform {
  backend "s3" {
    bucket = "classtest-s3f-backend"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}