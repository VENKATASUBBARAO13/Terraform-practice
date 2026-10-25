provider "aws" {
    region = "us-east-1"
    alias = "default"
  
}

provider "aws" {
    region = "us-west-2"
    alias = "dev"
}