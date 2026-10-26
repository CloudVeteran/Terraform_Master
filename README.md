# Terraform_Master

## RDS master password

The MariaDB master password for `aws_db_instance.myRDS` is not stored in this repository. `rds/main.tf` reads it from the sensitive variable `db_password`, which has no default.

Supply it in either of these ways:

- Export it in your shell: `export TF_VAR_db_password='...'` before `terraform plan` or `terraform apply`.
- Copy `rds/terraform.tfvars.example` to `rds/terraform.tfvars` (gitignored) and set `db_password` there.
