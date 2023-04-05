module "aws-dev" {
    source = "../../infra"
    instance_aws = "t2.micro"
    region_aws = "us-west-2"
    key_aws = "IaC-DEV"
    instance_name = "APP - DEV - Python"
    security_group = "dev"
    min_size = 0
    max_size = 1
    group_name = "Desenvolvimento"
}

output "IP" {
    value = module.aws-dev.ip_public
}