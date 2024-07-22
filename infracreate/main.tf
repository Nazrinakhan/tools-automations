resource "aws_instance" "tool" {
    ami             = data.aws.ami.rhel9.image_id
    instance_type   = var.instance_type
    vpc_security_group_ids = [aws_security_group.tool-sg.id]

    tags = {
        Name = var.name
        }
    }

resource "aws_security_group" "tool-sg" {
  name        = "{var.name}-sg"
  description = "{var.name}-sg"

 egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
 ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "{var.name}-sg"
  }
}

