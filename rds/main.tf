provider "aws" {
    region = "us-east-1"
}

resource "aws_db_instance" "myRDS" {
    db_name = "myDB"
    identifier = "my-first-rds"
    instance_class = "db.t3.micro"
    engine = "mariadb"
    engine_version = "10.11"
    username = "bob"
    password = "***REMOVED***"
    port = 3306
    allocated_storage = 20
    skip_final_snapshot = true

}