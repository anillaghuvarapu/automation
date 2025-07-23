output "instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.web_server.public_ip
}


output "image_id" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.web_server.ami
}
output "no_of_cpu_cores" {
  value = aws_instance.web_server.cpu_options[0].core_count
}

output "host_id" {
  value = aws_instance.web_server.host_id
}

output "instance-type" {
  value = aws_instance.web_server.instance_type
}

output "ipaddress" {
  value = aws_instance.web_server.private_ip
}

output "instance_state" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.web_server.instance_state
}

output "subnet_id" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.web_server.subnet_id
}


output "security_group_names" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.web_server.security_groups
}
