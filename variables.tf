variable "instance-type-root" {
	type = string
	sensitive = "false"
}

variable "ami-root" {
	type = string
	default = "ami-0c6615d1e95c98aca"
	sensitive = true
}
