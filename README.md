# Polaris-assignment
First to create the infra do :
1. terraform init
2. terraform plan -var-file="polaris.tfvars"
3. terraform apply -var-file="polaris.tfvars"

After this your infra will be created :
To deploy jenkins on the EKS :
run the helm deployment:

helm repo add jenkins https://charts.jenkins.io
helm repo update

helm install jenkins jenkins/jenkins \
  --namespace jenkins \
  --create-namespace \
  --set controller.serviceType=LoadBalancer \
  --set controller.adminPassword=admin \
  --set controller.installPlugins[0]=kubernetes \
  --set controller.installPlugins[1]=workflow-aggregator \
  --set controller.installPlugins[2]=git \
  --set controller.installPlugins[3]=docker-workflow \
  --set controller.installPlugins[4]=pipeline-stage-view

Deploy Kong API Gateway on EKS:
helm repo add kong https://charts.konghq.com
helm repo update

helm install kong kong/kong \
  --namespace kong \
  --create-namespace \
  --set ingressController.installCRDs=true \
  --set proxy.type=LoadBalancer

Generic Helm Chart for API Deployment:
helm create api-helm-chart

image:
  repository: trainwithshubham/notes-app-k8s
  tag: latest

service:
  port: 5000

apply the kubenetes changes
than configure the github webhooks with jenkins 
than you can access the kong-api 
curl http://10.0.1.20/my-api