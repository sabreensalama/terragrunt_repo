terraform {
  source = "../../../ec2-instance"
}
inputs = {
  instance_type = "t2.micro"
  instance_name = "example-server-stage"
  ami = "ami-0b9094fa2b07038b8"

}