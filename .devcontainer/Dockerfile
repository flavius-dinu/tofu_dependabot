# Use the base image provided by VS Code Dev Containers
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-22.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    python3-pip \
    python3.10 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Terraform
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
    apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
    apt-get update && apt-get install -y terraform

# Install OpenTofu 1.7.0
RUN curl -LO https://github.com/opentofu/opentofu/releases/download/v1.7.0/opentofu_1.7.0_linux_amd64.zip && \
    unzip opentofu_1.7.0_linux_amd64.zip && \
    mv opentofu /usr/local/bin/ && \
    rm opentofu_1.7.0_linux_amd64.zip

# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip aws

# Install Kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && \
    rm kubectl

# Set the default shell to bash instead of sh
ENV SHELL /bin/bash

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
