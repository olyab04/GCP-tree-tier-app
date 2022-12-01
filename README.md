# GCP-tree-tier-app



What is Terraform?
Terraform is an infrastructure as code tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share. You can then use a consistent workflow to provision and manage all of your infrastructure throughout its lifecycle. Terraform can manage low-level components like compute, storage, and networking resources, as well as high-level components like DNS entries and SaaS features.



Terraform core concepts:
Variables: Also used as input-variables, it is key-value pair used by Terraform modules to allow customization.

Provider: It is a plugin to interact with APIs of service and access its related resources. (We will be using AWS for this project)

Module: It is a folder with Terraform templates where all the configurations are defined.

Resources: refers to a block of one or more infrastructure objects (compute instances, virtual networks, etc.), which are used in configuring and managing the infrastructure.

Output Values: These are return values of a terraform module that can be used by other configurations.

Plan: It is one stage where it determines what needs to be created, updated, or destroyed.

Apply: It is the last stage where it applies the changes of the infrastructure in order to move to the desired state.


Enable services to start provisioning environment
!/bin/bash
gcloud services enable compute.googleapis.com

gcloud services enable dns.googleapis.com

gcloud services enable storage-api.googleapis.com

gcloud services enable container.googleapis.com

Project was created with a random id.





Create a DB instance with a DB inside it and create a user
