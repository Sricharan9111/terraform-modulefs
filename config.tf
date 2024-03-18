provider "aws" {
	region = "us-east-1"
        shared_credentials_files = ["/opt/aws/credentials"]

}

#EC2 instance details

resource "aws_instance" "Jenkins-Test" {
        count = 1
	ami = "ami-0fe630eb857a6ec83"
	instance_type = "t2.micro"
        key_name = "mybasicserver"
	security_groups = ["launch-wizard-3"]
	tags = {
		Name = "Jenkins-Test1"
	}

}
