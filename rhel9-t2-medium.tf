provider "aws" {
        region = "us-east-1"
	shared_credentials_files = ["/opt/aws/credentials"]

# Add the below in the file /opt/aws/credentials
#[default]
#aws_access_key_id = "xxxxxxxxxxxxxxxxx"
#aws_secret_access_key = "xxxxxxxxxxxxxxxxxx"

}

#EC2 instance details

resource  "aws_instance" "myredhatserver" {
        count = 1
        ami = "ami-0fe630eb857a6ec83"
        instance_type = "t2.medium"
        key_name = "mybasicserver"
        security_groups = ["launch-wizard-3"]
        tags = {
        name = "myredhatserver2"
        }

}
