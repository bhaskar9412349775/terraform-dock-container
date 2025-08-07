#########################################
# Terraform Configuration for Docker
# Author: Bhaskar Kushwah

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.0"
}

# Define the Docker provider (communicates with local Docker)
provider "docker" {}

# Pull the latest nginx image from Docker Hub
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Create a container using the nginx image
resource "docker_container" "nginx_server" {
  name  = "nginx_server"
  image = docker_image.nginx.name

  # Port Mapping: Host 8080 → Container 80
  ports {
    internal = 80
    external = 8081
  }

  # Optional: Automatically remove container when it stops
  must_run = true
  restart  = "unless-stopped"
}

