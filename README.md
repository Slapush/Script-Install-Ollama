# Installation Script for Ollama, Open-webui and Docker Environment

This repository provides a comprehensive installation script to set up Ollama, pull the llama2 model, and configure a Docker environment to run the open-webui container. This script is designed to streamline the setup process for developers and enthusiasts.

## Features

- Automated installation of Ollama from [ollama.com](https://ollama.com/download).
- Pulling the llama2 model using Ollama.
- Installation and configuration of Docker and associated plugins.
- Deployment of the open-webui container with necessary environment configurations.

## Prerequisites

- A system running Ubuntu (or a compatible Linux distribution).

## Usage

1. Clone the repository:
   ```sh
   git clone https://github.com/Slapush/Script-Install-Ollama.git
   cd Script-Install-Ollama
   ```

2. Make the script executable:
   ```sh
   chmod +x ollama-install.sh
   ```

3. Run the script:
   ```sh
   ./ollama-install.sh
   ```

This script will:

1. Install Ollama.
2. Pull the llama2 model using Ollama.
3. Update your system packages and install necessary certificates.
4. Set up Docker, including the Docker GPG key and repository.
5. Install Docker Engine and plugins.
6. Run the open-webui container.

## Port Information
The open-webui service will be accessible on port ``8080``.

## References

This installation script was inspired by detailed tutorials and documentation from the following sources:

- [NetworkChuck Academy](https://academy.networkchuck.com/products/youtube-videos/categories/2155282450/posts/2177513911)
- [Ollama Official Page](https://ollama.com/download)

By following these steps, you can easily set up a powerful development environment with Ollama, Open-webui and Docker.
