provider "aws" {
    region = "eu-west-1"
}

module "backend" {
    source = "github.com/williamvannuffelen/tf_aws_backend"
}

output "backend_config" {
    value = module.backend.config
}