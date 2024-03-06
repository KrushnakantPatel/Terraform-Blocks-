##Configuring AWS Credentials for terraform Provider 
##There are different ways to add the credentials

This is the Provider Block 
1. Static credentials: Static credentials can be provided by adding an access_key and secret_key in the AWS provider block
provider "aws" {
  region     = "us-east-1"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}
2. Environment Variables: You can provide credentials via the AWS_ACCESS_KEY_ID and AWS_SECREY_ACCESS_KEY, environment variables, representing your AWS Access Key and AWS secret Key
provider "aws" {
}
$ export AWS_ACCESS_KEY_ID="anaccesskey"
$ export AWS_SECRET_ACCESS_KEY="asecretkey"
$ export AWS_DEFAULT_REGION="us-east-1"

3.  Shared Credentials/configuration file: This is one of the way you can use an AWS credentials to specify your credentials. You have to specift a different location in the terraform configuring by providing the shared credentials 

provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/Users/tf_user/.aws/creds"
  profile                 = "customprofile"
}

    # Provier Block 
    /*
    terraform {
    required_version = ">=1.0.0"
    required_providers {
        aws ={ 
            source = "hashicorp/aws"
            version = "~>3.0"

        }
        random = {
            source = "hashicorp/random"
            version = "3.1.0"
        
        }
    }
    }
    */

    #This is the Provider Block
    provider "aws" {
    region = "us-east-1"
    # This informs terraform to use AWS provider and deploy services in us-east-1 region
    }

    #Creating the aws EC2 instance named web_server
    #This is also referred to as Resource Block because it starts with the term resource
    resource "aws_instance" "web_server" {
    ami           = "ami-07d9b9ddc6cd8dd30"
    instance_type = "t2.micro"

    tags = {
        Name        = "Chris"
        Environment = "Production"
    }
    }



