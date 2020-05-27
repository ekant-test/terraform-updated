## Outputs
output "role_id" {
  value = "${aws_iam_role.atg_iam_create_role.id}"
}


output "role_arn" {
  value = "${aws_iam_role.atg_iam_create_role.arn}"
}
