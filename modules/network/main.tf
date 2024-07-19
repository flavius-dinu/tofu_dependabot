resource "aws_vpc" "this" {
  for_each   = var.vpcs
  cidr_block = each.value.cidr_block

  tags = merge({
    Name = each.key
  }, each.value.tags)
}


