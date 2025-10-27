terraform {
  backend "s3" {
   bucket = "classtest-s3f-backend"
    key    = "tfstate"
    region = "us-east-1"
  }
}