basg
bash
sudo apt update && sudo apt upgrade -y 
bash
sudo apt install git -y 
bash
sudo apt install unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
bash 
aws configure
sudo apt install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install terraform -y
bash
sudi apt install docker.io -y 
sudo apt install docker.io | sudo usermod -aG docker ubuntu
sudo apt install docker.io -y
sudo usermod -aG docker ubuntu
restart
bash
mkdir project1
cd project1
bash
terraform apply -target=aws_ecr_repository.app
nano app.py 
BASH
bash
nano requirements.txt
bash
nano Dockerfile
bash
docker build -t web-app
docker build --help
docker build -t web-app.
docker build -t web-app .
docker build --t web-app .
docker build -t web-app .
bash
nano Dockerfile
docker build -t web-app . 
nano Dockerfile
docker build -t web-app . 
docker run -p 8080:5000 web-app
bash
nano requirement.txt
del requirement.txt
nano requirements.txt
docker build --no-cache- webapp .
docker build --no-cache- -t web-app .
docker build --no-cache -t web-app .
docker run -p 8080:5000 web-app
bash
nano variables.tf
bash
terraform init
bash
nano main.tf
bash
nano outputs.tf
bash
terraform state list
bash
docker images
bash
echo ".terraform*\n*.tfstate*\n" > .gitignore
git init
git add .
git commit -m "Initial project setup with Docker and Terraform"
git branch -M main
git remote add origin https://github.com/minab0tr0s/aws-ecs-webapp-project.git
git push -u origin main
cd project1
ls
bash
terraform init
bash
echo ".terraform*\n*.tfstate*\n" > .gitignore
git init
git add .
git commit -m "Initial project setup with Docker and Terraform"
git branch -M main
git remote add origin https://github.com/minab0tr0s/aws-ecs-webapp-project.git
git push -u origin main
bash
terraform apply -sudo apt install unzip -y
bash
terraform apply -target=aws_ecr_repository,app
bash
terraform apply -target=aws_ecr_repository.app
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 919693204993.dkr.ecr.us-east-1.amazonaws.com/webapp-repo
docker tag web-app:latest 919693204993.dkr.ecr.us-east-1.amazonaws.com/webapp-repo:latest
docker push 919693204993.dkr.ecr.us-east-1.amazonaws.com/webapp-repo:latest
bash 
echo ".terraform*\n*.tfstate*\n" > .gitignore
git init
git add .
git commit -m "Initial project setup with Docker and Terraform"
git branch -M main
git remote add origin https://github.com/minab0tr0s/aws-ecs-webapp-project.git
git push -u origin main
bash
terraform apply
bash
echo ".terraform*\n*.tfstate*\n" > .gitignore
git init
git add .
git commit -m "Initial project setup with Docker and Terraform"
git branch -M main
git remote add origin https://github.com/minab0tr0s/aws-ecs-webapp-project.git
git push -u origin main
bash
