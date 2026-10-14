terraform {
  backend "s3" {
    bucket         = "testing-terraform-s3-backend-2026"
    key            = "dev/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    use_lockfile     = true

  }
}