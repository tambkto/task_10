output "service_role_arn" {
  value = aws_iam_role.service_role.arn
}
output "instance_role_name" {
  value = aws_iam_instance_profile.instance_profile.name
}