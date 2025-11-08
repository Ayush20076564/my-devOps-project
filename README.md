
# Automated CI/CD Pipeline for Static Web Application on AWS

## Overview
This project implements a fully automated DevOps pipeline to deploy a static website on an AWS EC2 instance. 
It uses Terraform for infrastructure provisioning, Docker for containerization, 
GitHub Actions for CI/CD automation, and Ansible for configuration management and deployment.

## Features
- Automated provisioning of cloud infrastructure using Infrastructure as Code (IaC) with Terraform
- Containerization of application using Docker, ensuring consistency across environments
- Continuous Integration and Deployment triggered by GitHub Actions workflows
- Remote configuration and deployment managed seamlessly with Ansible
- End-to-end automation minimizing manual work and speeding up deployment
- Deployment status notifications via email integrated into the pipeline

## Getting Started

### Prerequisites
- AWS account with permissions to create EC2 instances and security groups
- GitHub repository with actions enabled
- Local machine with Docker, Terraform, and Ansible installed
- SSH key access configured to connect to AWS EC2 instances

### Installation

1. Clone this repository:

git clone https://github.com/Ayush20076564/my-devOps-project.git 
cd my-devOps-project


2. Configure terraform variables with your AWS settings.

3. Initialize and apply Terraform to provision infrastructure:

terraform init
terraform apply -auto-approve


4. Push your code to GitHub to trigger the CI/CD pipeline.

## Usage

After pushing changes to the main branch, the GitHub Actions workflow will:
- Build and containerize the static website into a Docker image
- Transfer the image to the EC2 instance
- Use Ansible to deploy and run the container on the EC2 instance

Access the deployed website using the public IP of the EC2 instance:

http://<EC2-Public-IP>

## Troubleshooting

- Ensure your SSH keys have correct permissions (e.g., `chmod 400`).
- Check GitHub Actions logs for detailed error messages.
- Validate Terraform provider versions and states.
- Inspect Ansible playbook logs for deployment issues.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## License

This project is licensed under the MIT License.

## Contact

Ayush Sharma - [20076564@mydbs.ie](mailto:20076564@mydbs.ie)

Project Link: [https://github.com/YourUsername/your-repo-name](https://github.com/Ayush20076564/my-devOps-project)

