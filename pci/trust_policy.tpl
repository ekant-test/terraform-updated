{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": [
          "arn:aws:iam::483080138876:user/tdnx-s-atss0014"
        ]
      },
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": [
            "ATTATGPROD_SFCRole=4_N/IT9jFMddIWhjCe2IjlGZzOAsQ="
          ]
        }
      }
    }
  ]
}
