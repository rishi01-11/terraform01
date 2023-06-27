terraform {
  backend "s3" {
    bucket = "terraform-backend.tf123"
    key    = "terraform-tfstate"
    region = "us-east-1"
  }
}