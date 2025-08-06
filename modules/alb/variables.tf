variable "vpc_id" {
  description = "The VPC ID where resources will be created"
  type        = string
}
variable "alb_sg_id" {
  description = "The security group ID for the ALB"
  type        = string
}
variable "subnets" {
  description = "List of subnet IDs for the ALB"
  type        = list(string)
}