
variable "region" {
  type        = string
  description = "(Optional) AWS Region to deploy in. Defaults to us-east-1."
  default     = "us-east-1"
}

variable "prefix" {
  type        = string
  description = "(Required) Prefix to use for all resources in this module."
}

variable "environment" {
  type        = string
  description = "(Required) Environment of all resources"
}

variable "billing_code" {
  type        = string
  description = "(Required) Billing code for network resources"
}

# Application variables

variable "ip_range" {
  default = "0.0.0.0/0"
}

variable "instance_type" {
  type        = string
  description = "(Optional) EC2 Instance type to use for web app. Defaults to t3.micro."
  default     = "t3.micro"
}

variable "ec2_role_name" {
  type        = string
  description = "(Optional) EC2 Instance role name"
}

variable "api_key_secret_id" {
  type        = string
  description = "(Required) Secret ID for the API key for web app to talk to SaaS platform."
}

variable "playbook_repository" {
  type        = string
  description = "(Required) URI of Ansible playbook"
}

# variable "vpc_id" {
#   type        = string
#   description = "(Required) VPC ID of VPC for application deployment."

# }

# variable "public_subnets" {
#   type        = list(string)
#   description = "(Required) List of subnet IDs for EC2 instance deployments."
# }

# TFE Variables

variable "tfe_organization" {
  type        = string
  description = "(Required) Name TFE organization."

}

variable "tfe_workspace_name" {
  type        = string
  description = "(Required) Name of networking workspace to get info."
}



