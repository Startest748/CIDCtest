resource "aws_s3_bucket" "bucket_name" {
 bucket = "mytf-jjtech-bucket1020" 

 tags = {
    Name        = "Test bucket"
    Environment = "modules-demo"
  }
}


# import {
#   to = aws_s3_bucket.example
#   id = "github-action-bucket-02"


# }

# resource "aws_s3_bucket" "example" {
#   ### Configuration omitted for brevity ###
# }
  
