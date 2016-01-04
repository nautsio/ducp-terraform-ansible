variable "access_key" {}
variable "secret_key" {}
variable "region" {}
variable "key_name" {}
variable "replica_count" {}
variable "amis" {
    default = {
        ap-northeast-1 = "ami-46c4f128"
        ap-southeast-1 = "ami-e378bb80"
        ap-southeast-2 = "ami-67b8e304"
        eu-central-1   = "ami-46afb32a"
        eu-west-1      = "ami-2213b151"
        sa-east-1      = "ami-e0be398c"
        us-east-1      = "ami-4a085f20"
        us-west-1      = "ami-fdf09b9d"
        us-west-2      = "ami-244d5345"
    }
}
