resource "aws_vpc" "main1" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main"
  }
}
