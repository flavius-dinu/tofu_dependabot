provider "aws" {
  region = "eu-west-1"
}

module "network" {
  source = "git::ssh://git@github.com/flavius-dinu/tofu_dependabot.git//modules/network?ref=network-v0.0.1"
  vpcs = {
    vpc1 = {
      cidr_block = "10.0.0.0/16"
    }
  }
}
