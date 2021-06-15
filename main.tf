terraform {
  required_version = ">= 0.14.7"
}

provider "aws" {
  region = "us-west-2"
}


resource "aws_security_group" "demo_sg" {
  vpc_id = var.vpc_id

  name = "demo_sg"

  dynamic "ingress" {
    for_each = setproduct(var.ingress_rules, var.services)
    content {
      description = "allow ${ingress.value[1]}"
      from_port   = ingress.value[1]
      to_port     = ingress.value[1]
      protocol    = ingress.value[0]["protocol"]
      cidr_blocks = ingress.value[0]["cidr_blocks"]
    }
  }
}
