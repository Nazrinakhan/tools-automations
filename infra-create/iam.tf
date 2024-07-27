resource "aws_iam_role" "role" {
  name = "${var.name}-role"


  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    tag-key = "${var.name}-role"
  }
}

resource "aws_iam_role_policy_attachment" "policy-attach" {
    count       = length(var.poly_name)
  role       = aws_iam_role.role.name
  policy_arn = "arn:aws:iam::aws:policy/${var.policy_name[count.index]}"
}