resource "aws_security_group" "security_group_roboshop" {
  name        = var.sg_name
  description = var.sg_description
  #vpc_id      = "${aws_vpc.main.id}"

  ingress {
    description = var.sg_description
    from_port   = var.sg_inbond_from_port
    to_port     = var.sg_inbond_to_port
    protocol    = "tcp"
    cidr_blocks = var.sg_cidr_block
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "robo-shop"
  }
}