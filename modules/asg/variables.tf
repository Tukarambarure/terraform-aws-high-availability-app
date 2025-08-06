variable "subnets" {
  description = "The subnets to launch the ASG instances into"
  type        = list(string)
}

variable "launch_template_id" {
  description = "The ID of the launch template to use for the ASG"
  type        = string
}

variable "target_group_arn" {
  description = "The ARN of the target group to register the ASG instances with"
  type        = string
}
variable "vpc_id" {
  description = "The VPC ID where the ALB and target group will be created"
  type        = string
}