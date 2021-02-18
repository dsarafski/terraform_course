terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "dsarafski-terraform-up-and-running-state"
    key            = "stage/data-stores/mysql/terraform.tfstate"
    region         = "us-east-1"
    profile = "linuxa-axway"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}
