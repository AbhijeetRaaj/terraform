resource "aws_vpc" "vpc-A" {

	cidr_block = var.vpc-cidr-child
	tags = {
		Name = "VPC-A"
	}
}

resource "aws_subnet" "pub-sub" {
	cidr_block = var.pub-sub-child 
	vpc_id = aws_vpc.vpc-A.id
	availability_zone = "ap-south-1b"
	tags = {
		Name = "Pub-sub"
}

}

resource "aws_internet_gateway" "igw" {
	vpc_id = aws_vpc.vpc-A.id

	tags = {
		Name = "igw"
	}

}

resource "aws_route_table" "pub-rt" {
	vpc_id = aws_vpc.vpc-A.id

	tags = {	
		Name = "pub-rt"
	}

}

resource "aws_route_table_association" "sub-assc" {
	subnet_id = aws_subnet.pub-sub.id
	route_table_id = aws_route_table.pub-rt.id


}
