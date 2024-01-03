output "vpc_id"{
    value = aws_vpc.test-terragrunt.id
}
output "subnet_id"{
    value = aws_subnet.subnet.id
}