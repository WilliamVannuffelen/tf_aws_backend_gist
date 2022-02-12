## S3 TF Backend
PoC on how to set up and use AWS S3 as a backend to store Terraform state files.
Uses DynamoDB for state locking.
Credit to Scott Winkler's Terraform in Action.

## Repo overview

**tf_aws_backend**: also hosted as its own repo, contains the TF module used to deploy the backend.

**tf_aws_backend_deploy**: contains an example TF configuration used to deploy the backend.

**tf_aws_backend_use**: contains an example TF configuration which uses the backend to store its state.