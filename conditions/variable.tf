variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}


variable "instance_name" {
    type = list
    default = ["MongoDB","Redis","MySql","RabbitMq","Catalogue","User","Cart","Shipping","Payment","Dispatch","Web"]
}