# Terraform CI/CD Pipeline for AWS Resources
This repository hosts a collection of Terraform configuration files designed to provision a robust AWS infrastructure, including a VPC, load balancer, EC2 instances, and security groups. It showcases the use of a CI/CD pipeline implemented with GitHub Actions to automate the deployment and management of AWS resources.

## Repository Structure
The repository consists of the following Terraform files and directories:

* **Terraform-VPC**: This directory contains the primary Terraform configurations for provisioning AWS VPC resources.
* **modules**: Contains modular definitions for AWS resources. The modules increase the reusability of the code and include:
* **alb**: Application Load Balancer setup.
* **ec2**: EC2 instances configurations.
* **sg**: Security Groups definitions.
* **vpc**: Virtual Private Cloud configuration.
* **main.tf**: Orchestrates the module usage and defines the module calls.
* **variables.tf**: Defines the input variables for the Terraform configurations.
* **provider.tf**: Configures the AWS provider and specifies the required version.
* **terraform.tfvars**: (If present) Specifies the values for the input variables.
## GitHub Actions Workflow
The .github/workflows directory contains the YAML file for the GitHub Actions workflow, which automates the following steps:

* **Initialization**: Sets up the Terraform environment and initializes the configuration.
* **Validation**: Checks for correctness and completeness of the configuration files.
* **Planning**: Outputs an execution plan for Terraform to detail the actions to be taken.
* **Application**: Applies the execution plan to create or update resources.
## Branching Strategy
The repository maintains two branches:

* **main**: The default branch, which contains the latest, stable version of the Terraform configurations. Any push to this branch will trigger the automated CI/CD pipeline.
* **feature**: This branch is used for developing new features or updates before they are merged into the main branch.
## Terraform CI/CD Pipeline
The CI/CD pipeline is configured to perform the following actions upon a push to the main branch:

* Checkout the repository's main branch.
* Set up the Terraform CLI in the GitHub Actions runner.
* Initialize Terraform within the Terraform-VPC directory.
* Validate the Terraform files to ensure there are no errors.
* Create a Terraform plan to show the intended actions.
* Apply the Terraform configuration to deploy changes to the infrastructure.
Note: The current setup includes a terraform destroy command in the pipeline, which is typically not used in production environments as it would remove all managed infrastructure. It's used here for demonstration purposes to clean up resources after testing.

## Viewing the Repository
This repository serves as a portfolio piece to demonstrate the setup and management of an AWS infrastructure using Infrastructure as Code (IaC) practices. It's a public showcase, and direct contributions are not sought. However, the repository may serve as a reference for best practices and examples in creating and managing AWS resources using Terraform and GitHub Actions.
