module "aws-prod" {
    source = "../../infra"
    instance_aws = "t2.micro"
    region_aws = "us-west-2"
    key_aws = "IaC-Prod"
    instance_name = "APP - PRD - Python"
    security_group = "Producao"
}

output "IP" {
    value = module.aws-prod.ip_public
}