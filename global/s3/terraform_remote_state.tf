terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "dsarafski-terraform-up-and-running-state"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
 }
}
