#!/bin/sh

echo "Pre-Build Steps:"
echo "authenticating with AWS ECR..."
aws ecr get-login-password --region <AWS_REGION> | docker login --username AWS --password-stdin <AWS_ACCOUNT_ID>.dkr.ecr.<AWS_REGION>.amazonaws.com

echo "Build Steps:"
echo "building image..."
docker build -f Dockerfile.arm --platform=linux/amd64 -t <AWS_ACCOUNT_ID>.dkr.ecr.<AWS_REGION>.amazonaws.com/<ECR_REGISTRY_NAME>:latest .

echo "Post-Build Steps:"
echo "pushing image to AWS ECR..."
docker push <AWS_ACCOUNT_ID>.dkr.ecr.<AWS_REGION>.amazonaws.com/<ECR_REGISTRY_NAME>:latest

echo "updating AWS ECS service..."
aws ecs update-service --cluster <CLUSTER_NAME> --service <SERVICE_NAME> --force-new-deployment

echo "Done!"