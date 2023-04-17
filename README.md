# Terraform Automation

## This is a demonstration of Automation of Terraform deployment using Github Actions.

### Series of steps that we are going to perform  in this project.
- Create a new repository in GitHub to store your Terraform code.
- Configure the AWS provider in the provider.tf file by specifying your access key and secret key as environment variables or using a credential file.
- Write Terraform code to create your AWS infrastructure. This can include resources such as EC2 instances, S3 buckets, RDS databases, VPCs, etc.
- Set up a GitHub Actions workflow to run Terraform init, plan, and apply commands. Use hashicorp/setup-terraform action to set up Terraform, and actions/checkout action to clone your repository.
- Save the Terraform state file using actions/upload-artifact action so that it can be used by the terraform destroy workflow.
- Add environment variables for your AWS access key and secret key to your GitHub repository secrets to keep them secure.
- Run the GitHub Actions workflow to create your infrastructure. You can use the Terraform output to get the URLs or IPs of the resources created.
- When you are done with your infrastructure, run the terraform destroy command using a separate GitHub Actions workflow. You can use actions/download-artifact action to download the Terraform state file from the terraform apply workflow. This workflow should only run on manual triggers and prompt the user for confirmation before destroying the infrastructure.

### The proper documentation with deployment is present at https://rishaws-projects.gitbook.io/devops-project/
