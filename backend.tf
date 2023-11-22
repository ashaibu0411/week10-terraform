terraform {
  backend "s3" {
    bucket         = "week10-zaq-bucket"
    key            = "week10/terraform.tfstate"
    region         = "us-east-1"
    shared_credentials_file = "~/.aws/credentials"
    encrypt        = true
    dynamodb_table = "TerraformLock"
  }
}