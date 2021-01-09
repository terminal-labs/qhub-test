provider "aws" {
  region = "us-west-2"
}

module "terraform-state" {
  source = "github.com/quansight/qhub-terraform-modules//modules/aws/terraform-state"

  name = "tl-test-project"

  tags = {
    Organization = "tl-test-project"
    Project      = "terraform-state"
    Environment  = "dev"
  }
}

