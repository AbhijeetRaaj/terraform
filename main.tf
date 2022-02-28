module "vpc" {

	source = "./vpc"
	

}

module "ec2" {

	source = "./ec2"
	instance-type-child = var.instance-type-root
	ami-child = var.ami-root

}
