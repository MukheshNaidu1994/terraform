resource "aws_instance" "web" {
    count = 11
    ami = var.ami_id
    instance_type = "t2.micro"
    #instance_type = var.instance_name == "MongoDB" ? "t3.small" : "t2.micro"
    tags = {
        Name = var.instance_name[count.index]
    }
}