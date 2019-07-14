# hawa-cloudformation
Deploy a high-availability web app using CloudFormation

This code deploys a high-availability web app in AWS. It deploys 4 EC2 instances by default in 2 Availability zones. They are launched by a launch configuration that is used by an Auto-Scaling group. The EC2 instances are in a private subnet and users can reach them using a Load balancer that is in a public subnet.

![](https://github.com/tadayoni1/HA-webapp/blob/master/diagram.jpeg)


### Prerequisites
User data on the scaling group downloads a zip file from an s3 bucket and unzips it to `/var/www/html`. 
Thus you need 
- A s3 bucket that gives permission to the IAM role for AutoScaling group which is defined in `network-parameters.json` as `EC2InstanceRole'.
  - Also update `S3BucketName` in `network-parameters.json`
- A zip file containing your web app

### Deployment Steps

Deployment is done in two steps. Each step is done through a stack
1. First deploy Network Infrastructure and IAM role using `./create_network.sh`
2. Then deploy compute resources using `./create_servers.sh`



### License

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <https://www.gnu.org/licenses/>.
