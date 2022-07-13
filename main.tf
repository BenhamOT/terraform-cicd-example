terraform {
  required_version = ">= 0.13"
}

# ------------------------------------------------------------------------------
# CONFIGURE OUR AWS CONNECTION AND STS ASSUME ROLE
# ------------------------------------------------------------------------------


provider "aws" {
  region = "eu-west-1"
}

# ------------------------------------------------------------------------------
# CONFIGURE REMOTE STATE
# ------------------------------------------------------------------------------

terraform {
  backend "s3" {
    bucket = "<bucket name for terraform state files>"
    key = "terraform.tfstate"
    region = "eu-west-1"
  }
}

# ******************************************************************************
# INFRASTRUCTURE
# ******************************************************************************


module "<first module>" {
    source = "/modules/<first module name>/"
    # any variables
}

module "<second module>" {
    source = "/modules/<second module name>/"
    # any variables
}