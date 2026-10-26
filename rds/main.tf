provider "aws" {
    region = "us-east-1"
}

variable "db_password" {
    description = "Master password for aws_db_instance.myRDS. Supply via TF_VAR_db_password or a gitignored terraform.tfvars file."
    type        = string
    sensitive   = true
}

resource "aws_db_instance" "myRDS" {
    db_name = "myDB"
    identifier = "my-first-rds"
    instance_class = "db.t3.micro"
    engine = "mariadb"
    engine_version = "10.11"
    username = "bob"
    password = var.db_password
    port = 3306
    allocated_storage = 20
    skip_final_snapshot = true

}
