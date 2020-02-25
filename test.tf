provider "aws" {
  region = "us-east-1"
}
##############################
#First test

#variable "hero_thousand_faces" {
#  description = "map"
#  type        = map(string)
#  default     = {
#    neo      = "hero"
#    trinity  = "love interest"
#    morpheus = "mentor"
#  }
#}

#output "bios" {
#  value = [for lala, values in var.hero_thousand_faces : "${lala} is the ${values}"]
#}
#################################
#Second test

variable "name" {
  description = "A name to render"
  type        = string
}

output "if_else_directive" {
  value = "Hello, %{ if var.name != "" }${var.name}%{ else }(unnamed)%{ endif }"
}
