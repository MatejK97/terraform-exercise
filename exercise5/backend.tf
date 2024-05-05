terraform {
  backend "s3" {
    bucket = "terra-state-24"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}