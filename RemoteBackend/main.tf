provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "remote-instance" {
    instance_type = "t2.micro"
    ami = "ami-0e86e20dae9224db8"
}

resource "aws_s3_bucket" "remoteBucket" {
    bucket = "terraform-remote-bucket-12345"
}
resource "aws_dynamodb_table" "terraform_lock" {
    name = "lock-terraform-new"
    hash_key         = "TestTableHashKey"
    billing_mode     = "PAY_PER_REQUEST"
    attribute {
        name = "TestTableHashKey"
        type = "S"
  }
}