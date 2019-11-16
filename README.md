# NI-test
Scalable applications for Azure

Network internationals Test: 

Task: 01  

Dockerization of the application: 

Created the docker file to buld the image and pushed to centralize repository. 

Clone the repository and execute the repository. 

Git clone url 

Build the application using docker build  

docker build . -t nodejs 

  

docker run -dt -p 5000:5000 nodejs 

 

You can access the application with  

Localhost:5000 or endpoint of the vm with port 5000 

 

The code of docker file: 

https://github.com/anand219/NI-test/blob/master/Dockerfile  

 

You can run directly pull images from docker hub, 

 

docker pull 9848334411/node-nitest:latest 

 

I have pushed the application to Azure container registrey too. 

 

docker pull nitest.azurecr.io/samples/nodejs:latest 

 

Deploy application on Azure platform: 

There are many ways we can deploy the application on azure  

 

1) we can deploy node.js application on web application as service.  

2)we can use the node js high availability cluster services to deploy application 

3)AKS deployment for application. 

 

 

 

I have implimented the solutions like below, 

 

Infrastruture implimentation with terraform, 

 

And configure npm environment and doing deployments with ansible. 

 

 

 

Using terraform i am creating infrstructure with two virtual machines will attach the load balancer to scale the application. 

 

Infrastructure: 

 

Terraform: 

 

https://github.com/anand219/NI-test/tree/master/terraform_azure_lb 

 

I have created the modules for each resources and from modules i have creating resources. 

 

change the varibles as pe your need basis and run it. 

https://github.com/anand219/NI-test/blob/master/terraform_azure_lb/body/terraform.tfvars 

 

Execute the terrafrom to buil the infrastructure. 

 

 

 

 

 

 

 

 

Configuration & Deployment: 

 

Ansible: 

I have created a roles to install npm and node js dependencies on virtual machines to deploy the application.  

 

To install nodejs and  excute the nodejs.yaml playbook with tag nodejs_install. 

 

Ansible-playbook –i  inventory file nodejs.yaml -t nodejs_install 

 

To deploy the application : 

 

Ansible-playbook –i  inventoryfile nodejs.yaml -t nodejs_deployment 

 

For prodcution we can use the either vm deploy ments or AKS managent: 

 

My recommendation for prod environment to deploy the application on AKS. 

 

Create a azue container registery to maintain the docker images. 

 

 

 

I have implimented fro deploy the application witth two replica sets, 

 

The container image i have pushed into azure container registery, 

 

nitest.azurecr.io/samples/nodejs:latest 

 

 

 

 

 

 

Under the deploymnet file i am using ACR to pull image 

 

Here you can find the code for the deployment 

 

https://github.com/anand219/NI-test/blob/master/aks/deployment.yaml 

 

Kubectl create –f deployment.yaml 

 

To expose the deployed application as a service run below commands, 

 

https://github.com/anand219/NI-test/blob/master/aks/service.yaml 

 

Kubectl create –f service.yaml 

 

  
