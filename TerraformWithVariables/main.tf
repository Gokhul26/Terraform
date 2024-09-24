provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "goks-1" {
    ami = var.ami-value
    instance_type = var.aws_instance_type
}
