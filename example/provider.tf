terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "2.70.0"
    }
  }




#Later Optional where terraform saves statefile to an existing s3 bucket.
#  backend "s3" {
#   bucket = "terraform-state-bucket"
#   key    = "state/terraform_state.tfstate"
#   region = "us-east-1"
# }
}

provider "aws" {
region = "ap-southeast-2"
}
