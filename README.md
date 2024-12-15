# containerization
## Introduction :
This project aims to demonstrate building and deploying a static webpage using Docker. This includes writing a Docker file and nginx configuration file and pushing the Docker image to Amazon ECR.

## Prereuisites :
- Docker -latest
- nginx

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

