# containerization
## Introduction :
This project aims to demonstrate building and deploying a static webpage using Docker. This includes writing a Docker file and nginx configuration file and pushing the Docker image to Amazon ECR.

## Prereuisites :
- Docker -latest
- nginx
- Aws Cli

## Repository Structure :
- **Dockerfile**: Defines the environment and instructions for building a Docker image for the application.
- **docker-compose.yml**: Configures multi-container Docker applications, specifying how different services interact.
- **index.html**: A Static html file.

## Getting Started :

1. **Clone the repository**:
   - Clone the repository with the below command.
   ```bash
   git clone https://github.com/prasanna-konduri/containerization.git
   cd containerization
   ```
2. **Build the Docker image**:
   ```
   docker build -t your-image-name .
   ```
3. **Run the application using Docker Compose**:
   ```
   docker-compose up
   ```
4. **Output**:
   - Open your browser and go to http://localhost:8080 to see your index.html.
5. **Creating a ECR repository**:
   - Login to your AWS account.
   - Navigate to ECR service page.
   - Click on create repository wich will navigate to the create repository page.
   - Give the name of the repository and select the image tag mutabilty and select the encryption and click on create.
   - The Repository will be created.
6. **Pushing the Image to Amazon ECR**:
   - Once the repository is created go to the repository and click on the view push commands button. 
   - Push commands for your repository will be displayed there.
   - The sample commands would look like the below ones.
   - Retrieve an authentication token and authenticate your Docker client to your registry. Use the AWS CLI:
      ```
      aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin aws-account-id.dkr.ecr.your-region.amazonaws.com
      ```
   - Build your Docker image using the following command.
      ```
      docker build -t your-ECR-repo-name .
      ```
   - After the build is completed, tag your image so you can push the image to the repository.
     ```
     docker tag your-ECR-repo-name:latest aws-account-id.dkr.ecr.your-region.amazonaws.com/your-ECR-repo-name:latest
     ```
   - Run the following command to push this image to your newly created AWS repository.
     ```
     docker push aws-account-id.dkr.ecr.your-region.amazonaws.com/your-ECR-repo-name:latest
     ```
7. **Use the Image to get deployed in ECS**:

   A. Create an ECS Task Definition

      - Define the Container Settings: Create a new task definition that specifies the container configurations, including CPU, memory, port mappings, and environment variables.
      - Reference the ECR Image: In the task definition, use the image URI from ECR so ECS knows which container image to deploy.

   B. Deploy the ECS Service on a Cluster

      - Set Up or Use an Existing ECS Cluster: Choose or create a cluster where your service will run.
      - Create and Configure the Service: Define an ECS service that uses your task definition, set desired instance counts, configure auto-scaling if needed, and optionally attach a load balancer to manage traffic.
      - Deploy and Monitor: Launch the service and monitor its health and logs to ensure the deployment is successful

## Sample output Screenshots:
<img width="1440" alt="docker1" src="https://github.com/user-attachments/assets/3440f7f0-55a0-42b0-ada4-17dc551248da" />

<img width="1440" alt="docker3" src="https://github.com/user-attachments/assets/bf4f2384-8e33-4b46-b1df-697179bc90c8" />

<img width="1440" alt="docker2" src="https://github.com/user-attachments/assets/334186da-fd41-439c-8424-5e1eaafc01f4" />

<img width="1440" alt="docker5" src="https://github.com/user-attachments/assets/3ab39fd2-383a-43d9-b2e9-3f14a854a20d" />

<img width="1440" alt="docker6" src="https://github.com/user-attachments/assets/6c5bd600-c053-4d08-930a-1a890bb55aff" />
   
