module "vpc1" {
    source = "./modules/IaaC"

    vpc_cidr = "10.0.0.0/16"
    public_subnet_cidr = "10.0.1.0/24"
    private_subnet_cidr = "10.0.2.0/24"
    availability_zone = "us-west-2a"
    batch_code = "tg-devops-weekend-11am"
    CreatedBy = "Pranav"
    isPrivateSubnetNeeded = true
  
}


# module "vpc2" {
#     source = "./modules/IaaC"

#     vpc_cidr = "192.168.0.0/16"
#     public_subnet_cidr = "192.168.1.0/24"
#     private_subnet_cidr = "192.168.2.0/24"
#     availability_zone = "us-west-2b"
#     batch_code = "tg-devops-weekend-12pm"
#     CreatedBy = "Vaidehi"
  
# }

module "vpc3" {
    source = "./modules/IaaC"

    vpc_cidr = "172.31.0.0/16"
    public_subnet_cidr = "172.31.1.0/24"
    private_subnet_cidr = "172.31.2.0/24"
    availability_zone = "us-west-2c"
    batch_code = "tg-devops-weekend-10am"
    CreatedBy = "Dipanshu"
    isPrivateSubnetNeeded = true
  
}

module "vpc4" {
    source = "./modules/IaaC"

    vpc_cidr = "172.31.0.0/16"
    public_subnet_cidr = "172.31.1.0/24"
    private_subnet_cidr = "172.31.2.0/24"
    availability_zone = "us-west-2c"
    batch_code = "tg-devops-weekend-01pm"
    CreatedBy = "Dipanshu"
    isPrivateSubnetNeeded = false
  
}

# vpc_cidr = "10.0.0.0/16"
# public_subnet_cidr = "10.0.1.0/24"
# private_subnet_cidr = "10.0.2.0/24"
# availability_zone = "us-west-2a"
# batch_code = "tg-devops-weekend-11am"
# CreatedBy = "Pranav"