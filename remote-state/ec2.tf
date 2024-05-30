 #resource <resource-type> <resource-name>

resource "aws_instance" "db" {

    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-0ad671dc18449ed1e"]
    instance_type = "t3.micro"


    tags = {
        Name = "db"
    }
}