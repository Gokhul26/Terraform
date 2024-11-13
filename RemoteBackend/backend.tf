terraform {
  backend "s3" {
    bucket = "terraform-remote-bucket-gokhul"
    region = "us-east-1"
    key = "goks/terraform.tfstate"
    dynamodb_table = "lock-terraform-new"
  }
}