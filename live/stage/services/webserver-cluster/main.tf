provider "aws" {
  region = "us-east-1"
}

module "webserver_cluster" {
  #source = "git::https://github.com/dsarafski/modules.git//services/webserver-cluster?ref=40310348322a345a0b70cb8e29659d13fb68368a"
  source = "../../../../modules/services/webserver-cluster"

  ami                    = "ami-07ebfd5b3428b6f4d"
  server_text            = "New server text"
  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "dsarafski-terraform-up-and-running-state"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"
  
  instance_type          = "t2.micro"
  min_size               = 2
  max_size               = 4
  enable_autoscaling     = false
}
