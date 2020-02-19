provider "aws" {
  region = "us-east-1"
}

module "webserver_cluster" {
  #source = "git::https://github.com/dsarafski/modules.git//services/webserver-cluster?ref=f0ceeca4d37d9276647293b8d0c771e5dbf7739f"
  source = "../../../../modules/services/webserver-cluster/"
  
  cluster_name           = "webservers-PROD"
  db_remote_state_bucket = "dsarafski-terraform-up-and-running-state"
  db_remote_state_key    = "prod/data-stores/mysql/terraform.tfstate"
  
  instance_type          = "t2.micro"
  min_size               = 2
  max_size               = 7

  custom_tags = {
    Owner      = "team-foo"
    DeployedBy = "terraform"
  }
}
