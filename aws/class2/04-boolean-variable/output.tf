output "instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.ec2_example.public_ip
}

output "no_of_cpu_cores" {
  description = "Number of CPU cores in the EC2 instance"
  value       = aws_instance.ec2_example.cpu_options[0].core_count
}


output "instance-type" {
  value = aws_instance.ec2_example.instance_type
}

output "ipaddress" {
  value = aws_instance.ec2_example.private_ip
}
