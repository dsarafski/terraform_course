resource "aws_security_group" "alb" {
  name = "terraform-example-alb"

  # Allow inbound HTTP requests
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound requests
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#resource "aws_lb" "example" {
#  name               = "terraform-asg-example"
#  load_balancer_type = "application"
#  subnets            = data.aws_subnet_ids.default.ids
#  security_groups    = [aws_security_group.alb.id]
#}
