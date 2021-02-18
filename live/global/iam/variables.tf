variable "user_names" {
  description = "Create IAM users with these names"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}


variable "test_names" {
  description = "Test IAM user with this names"
  type = map(string)
  default = {
    Name = "Lili"
    Hobby = "Hunting"
    Project = "Linuxa-Test"
  }
}