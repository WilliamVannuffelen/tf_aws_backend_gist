variable "namespace" {
    description = "Project namespace"
    default = "s3backend"
    type = string
}

variable "principal_arns" {
    description = "A list of principal arns allowed to assume the iam role"
    default = null
    type = list(string)
}
variable "force_destroy_state" {
    description = "Force destroy the s3 bucket containing sate files?"
    default = true
    type = bool
}