variable "vpcs" {
  type = map(object({
    cidr_block = string
    tags       = optional(map(string), {})
  }))
}
