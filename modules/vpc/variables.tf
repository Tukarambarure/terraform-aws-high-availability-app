variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default = "10.0.0.0/16"
}
variable "region" {
  description = "The AWS region where the VPC will be created"
  default = "ap-south-1"
}
variable "vpc_name" {
  description = "The name of the VPC"
  default = "main-vpc"
}
variable "enable_dns_support" {
  description = "Enable DNS support in the VPC"
  type    = bool
  default = true
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames in the VPC"
  type    = bool
  default = true
}
variable "tags" {
  type    = map(string)
  default = {
    Name = "vpc-main"
  }
}