resource "aws_vpc" "test-terragrunt"{
    cidr_block =  var.cidr
}
resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.test-terragrunt.id
  cidr_block        = var.subnet_cidr
  availability_zone = "eu-central-1a"

}