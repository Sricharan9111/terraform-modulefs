provider "aws" {
	access_key = "AKIAT4SJGZMCZHXPTQ5O"
	secret_key = "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"
	region = "us-east-1"

}

#EC2 instance details

resource "aws_instance" "Terraform-jenkins2" {
        count = 1
	ami = "ami-0fe630eb857a6ec83"
	instance_type = "t2.small"
        key_name = "Mydemoserver"
	security_groups = ["MyBasicSecGroup"]        
	tags = {
		Name = "Terraform-Jenkins2"
	}

}


resource "aws_instance" "Terraform-jenkins" {
        count = 1
	ami = "ami-0fe630eb857a6ec83"
	instance_type = "t2.small"
        key_name = "Mydemoserver"
	security_groups = ["MyBasicSecGroup"]        
	tags = {
		Name = "Terraform-Jenkins"
	}

}
