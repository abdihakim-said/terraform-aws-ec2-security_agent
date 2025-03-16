variable "vpc_id" {
  description = "The ID of the VPC where the EC2 instances will be deployed."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instances will be deployed."
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance to launch."
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The name of the SSH key pair to use for accessing the instances."
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instances."
  type        = string
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the EC2 instances."
  type        = list(string)
}

variable "instance_count" {
  description = "The number of EC2 instances to launch."
  type        = number
  default     = 1
}