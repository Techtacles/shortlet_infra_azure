# shortlet_infra_azure
In this project, we have three layers <br>
- application layer<br>
- azure infra layer <br>
- kubernetes infra layer<br>
<br>
The application layer is the api layer which uses fast api to return the current time. In this layer, there is a Dockerfile which we Kubernetes uses to create deployments and services. 

# INFRA LAYER
The infra layer uses terraform to build the necessary azurem components like <br>
- azure container registry<br>
- azure kubernetes service<br>
- vpcs, including subnets, nat gateways, route tables, etc<br>
- resource group.<br>

# KUBERNETES LAYER
This layer handles the deployment of kubernetes services using Terraform. It handles the deployment of <br>
- Pods <br>
- Deployments <br>
- Service accounts <br>
- Load balancer service <br>
- Metrics server <br>
This uses the images in ecr to create a deployment.

<img width="344" src="images/deployment.png">
<img width="344" src="images/svc_output.png">
<img width="344" src="images/svc.png">

# GITHUB ACTIONS
THe workflow for GitHub actions is :
--> Terraform build azuremresources --> Build and push application layer to acr --> Build the kubernetes internal layer --> Update the terraform docs dynamically
