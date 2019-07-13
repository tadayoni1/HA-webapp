# HA-webapp
Deploy a high-availability web app using CloudFormation

This code deploys a high-availability web app in AWS. It deploys 4 EC2 instances by default in 2 Availability zones. They are launched by a launch configuration that is used by an Auto-Scaling group. The EC2 instances are in a private subnet and users can reach them using a Load balancer that is in a public subnet.

![](https://github.com/tadayoni1/HA-webapp/blob/master/diagram.jpeg)


**Deployment Steps**

Deployment is done in two steps. Each step is done through a stack
1. First deploy Network Infrastructure and IAM role using create_network.sh
2. Then deploy compute resources using create_servers.sh
