provider "aws" {
  region = "${var.AWS_REGION}"
}

resource "aws_autoscaling_group" "this" {
  name                 = "${var.auto_scaling_group_name}"
  launch_configuration = "${var.auto_scaling_launch_conf_name}"
  vpc_zone_identifier  = "${var.alb_zones}"
  max_size             = "3"
  min_size             = "1"

  tags = [
    {
      key                 = "Environment"
      value               = "dev"
      propagate_at_launch = true
    },
    {
      key                 = "Project"
      value               = "megasecret"
      propagate_at_launch = true
    },
  ]
}
