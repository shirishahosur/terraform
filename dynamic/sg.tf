resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing 22,80,8080,3306 access"
    
    dynamic "ingress" {
        for_each = var.inbound_rules
        content{
        from_port        = each.value["port"]
        to_port          = each.value["port"]
        protocol         = each.value["proyocol"]
        cidr_blocks      = each.value["allowed_cidr"]
        }
    }

     
    
    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 means all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }



    tags = {
        Name = "allow_ssh"
        CreatedBy = "shirisha"
    }
}

