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
   Open your browser and go to http://localhost:8080 to see your index.html.
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

   
