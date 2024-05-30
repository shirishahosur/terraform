#count and count.index will not work in loacls
#locals {
    #record_name = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_name[count.index]}.${var.domain_name}".vedanshika.online
    #record_value = var.instance_names[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]

#}