provider "aws" {
  region = "eu-west-1"
}

module "network" {
  source = "git::ssh://git@github.com/flavius-dinu/tofu_dependabot.git//modules/network?ref=network-v0.0.6"
  vpcs = {
    vpc1 = {
      cidr_block = "11.0.0.0/16"
    }
  }
}
