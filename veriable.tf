variable "sg_name" {
  type = string
  default = "robo_shop_sg"
}

variable "sg_description" {
  type = string
  default = "Allow All Ports"
}

variable "sg_inbond_from_port" {
  type = number
  default = "0"
}

variable "sg_inbond_to_port" {
  type = number
  default = "0"
}

variable "sg_cidr_block" {
  type = list
  default = ["0.0.0.0/0"]
}

