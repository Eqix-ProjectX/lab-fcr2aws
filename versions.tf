terraform {
  required_version = ">= 1.5.4"
  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = ">= 1.25.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    # google = {
    #   source  = "hashicorp/google"
    #   version = "5.17.0"
    # }
  }
}
