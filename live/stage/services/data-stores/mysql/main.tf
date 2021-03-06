provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "terraform-up-and-running"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"
  final_snapshot_identifier = "blabla-snapshot"
  skip_final_snapshot = true
  name                = "example_database"
  username            = "admin"

  password = var.db_password
}

