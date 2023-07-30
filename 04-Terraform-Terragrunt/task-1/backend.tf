terraform {
  backend "s3" {
    bucket = "wa-test-bucket1"
    key    = "global/s3/terraform.tfstate"
    region = "eu-north-1"
  }
}