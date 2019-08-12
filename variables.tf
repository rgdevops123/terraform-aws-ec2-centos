variable "region" {
  description = "Region to be used."
  type        = string
  default     = "us-east-1"
}

variable "shared_credentials_file" {
  description = "Credentials file."
  type        = string
  default     = "/home/terraform/.aws/credentials"
}

variable "profile" {
  description = "Profile to be used."
  type        = string
  default     = "terraform"
}

variable "name" {
  description = "Name to be used on all resources as prefix."
  type        = string
  default     = "test-server"
}

variable "instance_count" {
  description = "Number of instances to launch."
  type        = number
  default     = 1
}

variable "ami" {
  description = "ID of Centos AMI to use."
  type        = string
  default     = "ami-0f2b4fc905b0bd1f1"
}

variable "instance_type" {
  description = "The type of instance to start."
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The key name to use for the instance."
  type        = string
  default     = "user1"
}

variable "monitoring" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled."
  type        = bool
  default     = false
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with."
  type        = list(string)
  default     = ["sg-0de7ba70ec355cc6b"]
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in."
  type        = string
  default     = "subnet-b1ff9fcb"
}

variable "associate_public_ip_address" {
  description = "If true, the EC2 instance will have associated public IP address."
  type        = bool
  default     = true
}

variable "user_data" {
  description = "The user data to provide when launching the instance."
  type        = string
  default     = <<-EOF
                     #!/bin/bash
                     yum -y update
                     yum -y install epel-release
                     yum -y install git htop tree vim wget
                     EOF
}

variable "use_num_suffix" {
  description = "Always append numerical suffix to instance name, even if instance_count is 1."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "volume_tags" {
  description = "A mapping of tags to assign to the devices created by the instance at launch time."
  type        = map(string)
  default     = {}
}
