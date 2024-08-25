variable "vpc_cidr" {
    type        = string
    description = "The CIDR block for the VPC"

}

variable "public_subnet_cidr" {
    type        = string
    description = "The CIDR block for the public subnet"
  
}

variable "private_subnet_cidr" {
    type        = string
    description = "The CIDR block for the private subnet"
  
}

variable "availability_zone" {
    type        = string
    description = "The availability zone for the subnet"
  
}

variable "batch_code" {
    type        = string
    description = "The batch code for the instance"
  
}

variable "CreatedBy" {
    type        = string
    description = "The user who created the instance"
  
}

variable "isPrivateSubnetNeeded" {
    type = bool
    description = "Whether a private Subnet is needed"
  
}