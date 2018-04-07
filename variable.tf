variable "AWS_REGION" {
  default     = "us-east-1"
  description = "This is AWS region name"
}

variable "auto_scaling_launch_conf_name" {
  default     = "AS_LC1"
  description = "This is auto scaling group name"
}

variable "auto_scaling_group_name" {
  default     = "TRF_AS_GRP1"
  description = "This is auto scaling lanuch configuration name"
}

variable "alb_zones" {
  type = "list"

  #  default     = ["us-east-1a", "us-east-1b"]
  default     = ["subnet-a05538eb", "	subnet-e0e832bd"]
  description = "This is availability_zones assciate with ELB"
}
