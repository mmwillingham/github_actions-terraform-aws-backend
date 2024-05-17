variable "aws_region" {
  default = "us-east-2"
}

variable "s3_bucket_name" {
  type    = string
  default = "rosa-tfstate-20240517"
}

variable "dynamoDB_table_name" {
  type    = string
  default = "rosa-tfstate-20240517"
}
