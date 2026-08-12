# AWS provider
provider "aws" {
  region  = #
  profile = #

  default_tags {
    tags = {
      "Automation"  = #
      "Project"     = #
      "Environment" = #
    }
  }
}