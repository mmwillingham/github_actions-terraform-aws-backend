variable "aws_region" {
  default = "us-east-2"
}

variable "s3_bucket_name" {
  type    = string
  default = "tfbackend-bucket"
}
