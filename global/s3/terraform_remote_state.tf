terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "sarafski-terraform-up-and-running-state"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-1"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
 }
}
