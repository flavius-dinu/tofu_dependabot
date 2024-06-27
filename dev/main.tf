provider "aws" {
  region = "eu-west-1"
}

module "network" {
  source = "git::ssh://git@github.com/flavius-dinu/tofu-dependabot.git//modules/network?ref=network-v0.0.1"
}
