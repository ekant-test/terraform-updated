# Owner   : Cloudopps
# Created : 5/27/2020
# Purpose : Create IAM Roles and multiple policy attachment.

# Creating IAM Role and attaching policies to the Role

provider "aws" {
  region = "ap-southeast-2"
}


resource "aws_iam_role" "atg_iam_create_role" {
    name               = "${var.m_rolename}"
    assume_role_policy = "${var.m_trust_policy}"
}

resource "aws_iam_instance_profile" "atg_instance_profile" {
    name = "${var.m_instance_profile}"
    role = "${aws_iam_role.atg_iam_create_role.name}"
}

resource "aws_iam_policy" "atg_role_policy" {
    name   = "${var.m_policy_name}"
    path   = "${var.m_path}"
    policy = "${var.m_policy}"
}

resource "aws_iam_policy_attachment" "attach_role_policy" {
    name       = "${var.m_policy_name}"
    roles      = ["${aws_iam_role.atg_iam_create_role.name}"]
    policy_arn = "${aws_iam_policy.atg_role_policy.arn}"
}
