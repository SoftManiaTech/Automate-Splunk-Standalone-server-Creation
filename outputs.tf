output "instance_name" {
  description = "The name of the Splunk instance"
  value       = var.instance_name
}

output "private_ip" {
  description = "The private IP of the Splunk instance"
  value       = aws_instance.splunk_server.private_ip
}

output "instance_id" {
  description = "The id of the Splunk instance"
  value       = aws_instance.splunk_server.id
}

output "public_or_elastic_ip" {
  description = "Elastic IP if assigned, otherwise public IP"
  value       = var.elastic_ip_needed ? aws_eip.splunk_eip[0].public_ip : aws_instance.splunk_server.public_ip
}

output "splunk_ssh_string" {
  description = "SSH command to connect to the Splunk instance"
  value       = "ssh -i ${var.key_name}.pem ec2-user@${var.elastic_ip_needed ? aws_eip.splunk_eip[0].public_ip : aws_instance.splunk_server.public_ip}"
}

output "ansible_ssh_string" {
  description = "SSH command to connect to the Splunk instance"
  value       = "ssh ec2-user@${var.elastic_ip_needed ? aws_eip.splunk_eip[0].public_ip : aws_instance.splunk_server.public_ip}"
}
