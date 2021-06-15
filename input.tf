variable "vpc_id" {
  type    = string
}

variable "services" {
  type    = list(string)
  default = []
}

variable "ingress_rules" {
    type = list(any)
}