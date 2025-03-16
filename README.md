   
   # Automating EC2 Instance Deployment and Security Agent Installation with Terraform and AWS Systems Manager

   ![PORTFOLIO PROJECTS_AWS - MODULE 5_THUMBNAIL](https://github.com/user-attachments/assets/d9c5a250-f981-4871-bf7a-58d153d6548a)


This project automates the deployment of EC2 instances on AWS using Terraform. It includes the necessary configurations to set up the infrastructure, install a security agent, and manage notifications through AWS Systems Manager and Amazon SNS.

## Problem Statement

The challenge was to deploy a set of EC2 instances and install a specific security agent on all these instances in an automated manner. The solution needed to ensure that the infrastructure was provisioned using Infrastructure as Code (IaC) principles and that the installation process was seamless and monitored.

## Solution

To address this challenge, Terraform was used to automate the infrastructure deployment, and AWS Systems Manager was utilized to handle the installation of the security agents. Amazon SNS was employed to send email notifications about the status of the installation process.

## Project Structure




## Project Structure

```
terraform-aws-ec2-setup
├── terraform
│   ├── main.tf              # Main Terraform configuration file
│   ├── variables.tf         # Input variables for Terraform
│   ├── outputs.tf           # Output values after deployment
│   └── terraform.tfstate     # Current state of the infrastructure
├── scripts
│   └── install_security_agent.sh  # Script to install the security agent
├── README.md                # Project documentation
└── .gitignore               # Files to ignore in version control
```

## Prerequisites

- AWS Account
- AWS CLI configured with appropriate permissions
- Terraform installed on your local machine or AWS Cloud Shell
- Basic knowledge of Terraform and AWS services

## Setup Instructions

1. **Clone the Repository**
   Clone this repository to your local machine or access it via AWS Cloud Shell.

2. **Edit Terraform Configuration**
   - Navigate to the `terraform` directory.
   - Update the `variables.tf` file with your specific VPC ID, subnet ID, and instance type.

3. **Create SSH Key Pair**
   Create an SSH key pair in the AWS Management Console to allow access to the EC2 instances.

4. **Initialize Terraform**
   Run the following commands in the `terraform` directory:
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

5. **Install Security Agent**
   After the EC2 instances are provisioned, the security agent will be installed automatically using AWS Systems Manager. The installation script is located in the `scripts` directory.

6. **Set Up Notifications**
   Configure Amazon SNS to receive notifications about the installation status. Ensure you confirm your email subscription to the SNS topic.




## Usage

- After running `terraform apply`, you can check the AWS Management Console for the created resources.
- Use AWS Systems Manager to manage and monitor the EC2 instances.
- Check your email for notifications regarding the installation process.

  ![1-PORTFOLIO PROJECTS_AWS - MODULE 5_ARCHITECTURE](https://github.com/user-attachments/assets/e09a3384-8d18-4969-929e-b70891bffb54)


## Conclusion

This project provides a streamlined approach to deploying EC2 instances with automated security agent installation. By leveraging Terraform and AWS services, you can efficiently manage your infrastructure as code.
