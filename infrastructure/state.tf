terraform {
  backend "s3" {
    bucket         = "tl-test-project-terraform-state"
    key            = "terraform/tl-test-project.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "tl-test-project-terraform-state-lock"
  }
}
