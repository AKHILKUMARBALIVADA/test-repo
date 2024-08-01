terraform {
  backend "s3" {
    bucket = "bucket-for-day-3"
    key    = "lahari/terraform.tfstate"
    region = "ap-south-1"
  }
}