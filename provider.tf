provider "aws" {
    region = "us-west-2"  

    assume_role {
      role_arn = "arn:aws:iam::211125425717:role/devops-11am-weekend-july-terraform-role"
      session_name = "devops-11"
    }
}