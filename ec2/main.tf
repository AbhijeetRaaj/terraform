resource "aws_instance" "my-ec2" {

	ami = var.ami-child
	instance_type = var.instance-type-child
	availability_zone = "ap-south-1b"

	tags = {
	Name = "my-ec2"	
}

}
