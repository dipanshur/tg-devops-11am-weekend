terraform {
  backend "s3" {
    bucket = "tg-devops-11am-weekend-july-terraform-state"
    key = "terraform.tfstate"
    region = "us-west-2"
    
  }
}