# ***Angular Deployment Project***
This project demonstrates the deployment of a custom Angular application using modern DevOps practices, including CI/CD with GitHub Actions, containerization, Terraform for infrastructure provisioning, and Ansible for configuration management. 😊

# Steps to Deploy
1. Clone the Repository
```
git clone <repository-link>
cd <repository-name>
```
2. Set Up GitHub Actions
GitHub Actions is already configured in .github/workflows/build.yml
The workflow builds the Angular project and pushes the Docker image to the GitHub Container Registry (GHCR).

3. Deploy Infrastructure with Terraform
Navigate to the terraform/ directory:
```
cd terraform
terraform init
terraform apply
```
This deploys a virtual machine (VM) to the chosen cloud provider (AWS or Azure).

4. Configure Docker with Ansible
Use the provided Ansible playbook to install Docker and deploy the Angular container on the VM:
`ansible-playbook -i inventory.ini install_docker.yml`

5. Access the Application
Open your web browser and visit the public IP address of the deployed VM.
---

## Project Motivation
This project was created as part of an interview process to showcase skills in:

- Setting up CI/CD workflows.
- Using Terraform for cloud infrastructure provisioning.
- Configuring servers with Ansible.
- Deploying containerized applications.

---
## Future Improvements

- Parameterization: Use variables in Terraform and Ansible to make the infrastructure and playbooks more flexible.
- Scalability: Add support for deploying multiple VMs with a load balancer.
- Monitoring: Integrate monitoring tools like Prometheus and Grafana to track the health of the deployed application.
- Secrets Management: Store sensitive data (e.g., API keys) securely using tools like AWS Secrets Manager or HashiCorp Vault.
- Testing: Add automated tests to the CI/CD pipeline to ensure code quality before deployment.

==Feel free to modify and extend the project to suit your needs!💫🥳==
