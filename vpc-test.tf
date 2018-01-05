provider "aws" { 
    region = "eu-west-1"
    alias = "eu-west-1"
} 

resource "aws_vpc" "sample-eu-west-1" {
    cidr_block = "10.34.0.0/16"
    provider = "aws.eu-west-1"
}
