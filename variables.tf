############ General Variables ################
variable "aws_profile" {
  description = "aws profile"
  default     = "default"
}

variable "aws_access_key" {
  default = ""
}

variable "aws_secret_key" {
  default = ""
 }

variable "region" {
    default = "us-east-1"
}

variable "env" {
  description = "env details"
  type        = string
  default     = "dev"
}

################# S3 Variables #####################
variable "bucket_name" {
   type        = string
   default     = "bucket-dev-test123"
}

variable "acl_value" {
  default = "private"
}

################# CDN Variables #####################
variable "static_name" {
  description = "path pattern"
  default     = "dev/media/*"
}

variable "media_name" {
  description = "path pattern"
  default     = "dev/static/*"
}

################# EKS Variables #####################
variable "cluster-name" {
   type        = string
   default     = "eks-cluster"
}

variable "subnet" {
  description = "subnet ID"
  type    = list
  default = ["subnet-057c1b1ef3578ca51","subnet-0e155d91aac19d96f"]
}


############### Security group Variables #####################
variable "vpc" {
  description = "VPC ID"
  type        = string
  default = "vpc-0813635cd5b7f0960"
}

################# EFS Variable #####################
variable "subnet-name" {
  description = "Subnet ID"
  type        = string
  default     = "subnet-057c1b1ef3578ca51"
}
