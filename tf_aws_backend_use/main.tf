terraform {
    backend "s3" {
        bucket = "s3backend-t7s7ygc5mwuqeb-state-bucket"
        key = "wvdtawsbackend/test"
        region = "eu-west-1"
        encrypt = true
        role_arn = "arn:aws:iam::850901712561:role/s3backend-t7s7ygc5mwuqeb-tf-assume-role"
        dynamodb_table = "s3backend-t7s7ygc5mwuqeb-state-lock"
    }
    required_version = ">= 1.1.5"

    required_providers {
        null = {
            source = "hashicorp/null"
            version = "~> 3.0"
        }
    }
}

resource "null_resource" "test_res" {
    triggers = {
        always = timestamp()
    }
    provisioner "local-exec" {
        command = "echo testing AWS backend for tf state with null resource"
    }
}