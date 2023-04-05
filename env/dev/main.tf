module "aws-dev" {
    source = "../../infra"
    instance_aws = "t2.micro"
    region_aws = "us-west-2"
    key_aws = "IaC-DEV"
    instance_name = "APP - DEV - Python"
}

output "IP" {
    value = module.aws-dev.ip_public
}