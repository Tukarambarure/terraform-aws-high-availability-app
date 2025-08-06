variable "ami_id" {
    description = "The AMI ID for the EC2 instance"
    default = "ami-0c55b159cbfafe1f0"
}
variable "instance_type" {
  description = "The instance type for the EC2 instance"
  default = "t2.micro"
}
variable "public_subnet_id" {
  description = "The public subnet id for the EC2 instance"
  type        = string
}
variable "key_name" {
  description = "The key name for the EC2 instance"
  default     = "my-key"
}