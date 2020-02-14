provider "aws" {
  region = "eu-west-1"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"
  
  cluster_name           = "webservers-PROD"
  db_remote_state_bucket = "sarafski-terraform-up-and-running-state"
  db_remote_state_key    = "prod/data-stores/mysql/terraform.tfstate"
  
  instance_type           = "t2.micro"
  min_size               = 2
  max_size               = 7
}
