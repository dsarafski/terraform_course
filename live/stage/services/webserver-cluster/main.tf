module "webserver_cluster" {
  source = "git::https://github.com/dsarafski/modules.git//services/webserver-cluster?ref=40310348322a345a0b70cb8e29659d13fb68368a"

  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "dsarafski-terraform-up-and-running-state"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"
  
  instance_type           = "t2.micro"
  min_size               = 2
  max_size               = 4
}
