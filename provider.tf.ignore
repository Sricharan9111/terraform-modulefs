# provider.tf
provider "aws" {
        access_key = "AKIAT4SJGZMC3PTOFCHU"
        secret_key = "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"
        region = "us-east-1"

}

# vpc.tf

# Create a VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "172.31.0.0/16" # Define the CIDR block for the VPC

  tags = {
    Name = "MyVPC"
  }
}

# subnet.tf

# Create public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "172.31.32.0/20" # Define the CIDR block for the subnet
  availability_zone       = "us-east-1b"  # Specify the availability zone
}

# Create private subnet
resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "172.31.0.0/20" # Define the CIDR block for the subnet
  availability_zone       = "us-east-1c"  # Specify the availability zone
}

# security_groups.tf

# Create security group for allowing SSH access
resource "aws_security_group" "ssh_sg" {
  name        = "ssh_sg"
  description = "Allow SSH traffic"
  vpc_id      = aws_vpc.my_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow SSH traffic from anywhere
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # Allow all outbound traffic
  }
}

# Create security group for allowing HTTP access
resource "aws_security_group" "http_sg" {
  name        = "http_sg"
  description = "Allow HTTP traffic"
  vpc_id      = aws_vpc.my_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow HTTP traffic from anywhere
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # Allow all outbound traffic
  }
}
