module "aws-dev" {
    source = "../../infra"
    instance_aws = "t2.micro"
    region_aws = "us-west-2"
    key_aws = "IaC-DEV"
}

output "IP" {
    value = module.aws-dev.ip_public
}