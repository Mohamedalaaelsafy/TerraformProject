terraform {
  backend "s3" {
    bucket = "iti-trigger"
    key    = "terraform.tfstate"
    region = "us-east-1"
    # dynamodb_table = "terraform_lock"
  }
}