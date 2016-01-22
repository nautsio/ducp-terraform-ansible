variable "access_key" {}
variable "secret_key" {}
variable "region" {}
variable "key_name" {}
variable "replica_count" {}
variable "amis" {
    default = {
        ap-northeast-1 = "ami-0ec5fa60"
        ap-southeast-1 = "ami-2828e44b"
        ap-southeast-2 = "ami-ded4f1bd"
        eu-central-1   = "ami-4a352c26"
        eu-west-1      = "ami-613a9012"
        sa-east-1      = "ami-240d8c48"
        us-east-1      = "ami-57ac8b3d"
        us-west-1      = "ami-a7b6c2c7"
        us-west-2      = "ami-5b00e53b"
    }
}
