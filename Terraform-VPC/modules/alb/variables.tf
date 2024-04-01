variable "sg_id" {
  description = "SG ID for ALB"
  type        = string
}

variable "subnets" {
  description = "Subnets for ALB"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID for ALB Target Group"
  type        = string
}

variable "instances" {
  description = "EC2 ID for ALB Target Group Attachment"
  type        = list(string)
}
