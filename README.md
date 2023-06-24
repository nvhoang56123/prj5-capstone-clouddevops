[![CircleCI](https://circleci.com/gh/nvhoang56123/prj5-capstone-clouddevops/tree/circleci-project-setup.svg?style=svg)](https://app.circleci.com/pipelines/github/nvhoang56123/prj5-capstone-clouddevops)

### Deployed application

http://a3e6d69a2446446798f9a20de200169e-688682414.us-east-1.elb.amazonaws.com/

## Capstone Project Overview

In this project you will apply the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program. These include:

* Working in AWS
* Using Jenkins or Circle CI to implement Continuous Integration and Continuous Deployment
* Building pipelines
* Working with Ansible and CloudFormation to deploy clusters
* Building Kubernetes clusters
* Building Docker containers in pipelines

### My strategy

I want to focus into pipeline and deployment development, so I choose to setup the Kubernetes cluster initialization by hand and do the rest via pipeline



**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the deployment environment

* Use supported UI from AWS to prepare environment.
```bash
* Login AWS Console
* Go to EKS page
* Create new cluster
* Compute new node groups.

```
* Make sure to choose `public cluster` when creating new cluster in order to have it accessible from your end.

### Dockerize your app `app.py`

1. Standalone:  `python app.py`
2. Test Dockerfile and app.py before building docker images.
3. Build and push docker to docker hub.

### Kubernetes Deployment

* Setup and Configure Kubernetes to interact with created cluster
* Pull docker image and create new deployment
* Run new pod with created deployment
* Quick check environment and exit
