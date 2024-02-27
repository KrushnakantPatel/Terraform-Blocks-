# Terraform-Blocks-

1. Provider Block : In this block we introduce the provider that we want to use in out terraform
2. Resource Block : Terraform uses resource block to manage infrastructure, such as virtual network, compute instances, or higher-level componenets such as DNS records. Resource block represent one or more infrastructure objects in your terraform configuration.
             AWS Provider         : AWS infrastructure
             Aws_instance          : EC2 instance
             aws_security_group   : Security Group
             s3_bucket            : Amazon S3 bucket
             aws_key_pair         : EC2 key pair
   If you are using more than one provider, you have to mention in a specific resource in specific provider
   Note: Without resource block, terraform is not going to create resources.
   
