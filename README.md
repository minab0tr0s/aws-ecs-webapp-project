# aws-ecs-webapp-project

# Project 1: Automated Deployment of a Containerized Web App on AWS ECS

## 🚀 Description

A comprehensive project that demonstrates a professional workflow for deploying a modern web application. This project takes a simple Python Flask application, containerizes it using Docker, and defines the entire cloud infrastructure as code using Terraform. The infrastructure is deployed on AWS and leverages the Elastic Container Service (ECS) with Fargate for serverless container orchestration.

This project serves as a practical example of automating cloud deployments and showcases core skills in Infrastructure as Code (IaC), containerization, and secure, scalable design using AWS cloud-native services.

***

## 🏛️ Architecture Diagram

The architecture is designed for security and scalability. Traffic from the internet is directed to an Application Load Balancer in public subnets. The ALB then forwards the traffic to the Flask application running as a Docker container in a private ECS task. This entire environment is provisioned within a custom, isolated Virtual Private Cloud (VPC).

***

## 🛠️ Technologies Used

This project utilizes a modern stack of cloud and DevOps technologies:

* **Cloud Provider:** AWS (Amazon Web Services)
* **Infrastructure as Code (IaC):** Terraform
* **Containerization:** Docker
* **Application:** Python (Flask Framework)

### Key AWS Services:

* **Amazon ECS (Elastic Container Service) with Fargate:** Runs the Docker container without the need to manage servers.
* **Amazon ECR (Elastic Container Registry):** Stores the versioned Docker images.
* **Application Load Balancer (ALB):** Distributes incoming traffic across the application containers.
* **Amazon VPC:** Creates a secure, isolated network for all the project resources.
* **IAM Roles:** Provides secure, temporary permissions for the services.

***

## ⚙️ Setup and Deployment

To deploy this project, you need an AWS account, Terraform, and Docker installed.

### Deployment Steps:

1.  **Clone the repository:**
    ```bash
    # Replace [YOUR_GITHUB_USERNAME] with your actual username
    git clone https://github.com/minab0tr0s/aws-ecs-webapp-project.git
    cd aws-ecs-webapp-project
    ```

2.  **Initialize Terraform:**
    This command prepares the working directory for Terraform.
    ```bash
    terraform init
    ```

3.  **Deploy the ECR Repository:**
    Apply only the ECR part first to get the repository URL needed for the Docker image.
    ```bash
    terraform apply -target=aws_ecr_repository.app
    ```

4.  **Build and Push the Docker Image:**
    Use the ECR repository URL from the previous step to log in, tag, and push the local Docker image to AWS.
    ```bash
    # Replace [YOUR_ECR_REPOSITORY_URL] and [YOUR_REGION] with the values from the previous output
    aws ecr get-login-password --region [YOUR_REGION] | docker login --username AWS --password-stdin [YOUR_ECR_REPOSITORY_URL]
    docker build -t web-app .
    docker tag web-app:latest [YOUR_ECR_REPOSITORY_URL]:latest
    docker push [YOUR_ECR_REPOSITORY_URL]:latest
    ```

5.  **Deploy the Full Infrastructure:**
    Now, deploy all the other resources defined in the Terraform code.
    ```bash
    terraform apply
    ```
    Confirm the deployment by typing `yes` when prompted.

***

## 🌐 Usage

Once the `terraform apply` command is complete, it will output the public DNS name of the Application Load Balancer.

1.  Find the `load_balancer_dns` value in the Terraform output.
2.  Copy this URL and paste it into your web browser.
3.  You should see the message: **"Hello from my first containerized application!"**

### Cleanup

To avoid ongoing AWS charges, destroy all the created infrastructure when you are finished.
```bash
terraform destroy
```
