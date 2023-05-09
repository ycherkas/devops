resource "aws_vpc" "vpc" {
  cidr_block = var.vpc-cidr
  tags = {
    Name     = "${var.environment}-${var.region}"
    location = var.region
    purpose  = var.environment
  }
  enable_dns_support   = true
  enable_dns_hostnames = true
  lifecycle {
    ignore_changes = [tags]
  }
}

resource "aws_subnet" "subnet-public" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = "${var.region}a"
  cidr_block              = cidrsubnet(aws_vpc.vpc.cidr_block, 2, 0)
  map_public_ip_on_launch = true
  lifecycle {
    ignore_changes = [tags]
  }
}

resource "aws_subnet" "subnet-private" {
  vpc_id                          = aws_vpc.vpc.id
  availability_zone               = "${var.region}a"
  cidr_block                      = cidrsubnet(aws_vpc.vpc.cidr_block, 2, 1)
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = false
  lifecycle {
    ignore_changes = [tags]
  }
}