resource "aws_launch_template" "webapp" {
  name_prefix   = "webapp-"
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name


  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "web-app"
    }
  }
}
