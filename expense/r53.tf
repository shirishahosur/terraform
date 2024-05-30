resource "aws_route53_record" "expense" {
  count = length(var.instance_names)
  zone_id = var.zone_id
  name    = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_name[count.index]}.${var.domain_name}".vedanshika.online
  #name = local.record_name
  type    = "A"
  ttl     = 1
  #count and count.index will not work in locals
  #records = var.instance_names[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
  records = local.record_value
  # if record already exists
  allow_overwrite = true
}
 