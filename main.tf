resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}



# Create the security group
resource "aws_security_group" "my_sg" {
  name_prefix = "my-sg"
  vpc_id      = aws_vpc.my_vpc.id

  # Allow incoming SSH traffic from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create the EC2 instance
resource "aws_instance" "my_ec2" {
  ami           = "ami-00c39f71452c08778" 
  # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  # vpc_security_group_ids = [aws_security_group.my_sg.id]

  # Associate the EC2 instance with the VPC
}

# Create the S3 bucket
resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "rishaw-bucket-shaw"
}


output "ec2_public_ip" {
  value = aws_instance.my_ec2.public_ip
}