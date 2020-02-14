provider "aws" {
  region = "eu-west-1"
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "terraform-up-and-running-prod"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"
  final_snapshot_identifier = "blabla-snapshot-prod"
  skip_final_snapshot = true
  name                = "example_database"
  username            = "admin"

  password = var.db_password
}

