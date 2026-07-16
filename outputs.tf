# ECR repository URL
output "ecr_repository_url" {
  description = "URL of the ECR repository"
  value       = module.ecr.repository_url
}



# VPC ID
output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

# Public subnet IDs
output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

# Private subnet IDs
output "private_subnet_ids" {
  description = "Private subnet IDs"
  value       = module.vpc.private_subnet_ids
}



# S3 bucket name
output "terraform_state_bucket_name" {
  description = "Terraform state bucket name"
  value       = module.s3_backend.bucket_name
}

# DynamoDB table name
output "terraform_locks_table_name" {
  description = "Terraform locks table name"
  value       = module.s3_backend.dynamodb_table_name
}



output "eks_cluster_name" {
  description = "Name of the EKS cluster"
  value       = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  description = "API endpoint of the EKS cluster"
  value       = module.eks.cluster_endpoint
}

output "eks_node_group_name" {
  description = "Name of the EKS managed node group"
  value       = module.eks.node_group_name
}

output "eks_oidc_provider_arn" {
  description = "ARN of the IAM OIDC provider registered for the EKS cluster"
  value       = module.eks.oidc_provider_arn
}

output "eks_oidc_provider_url" {
  description = "URL of the IAM OIDC provider registered for the EKS cluster"
  value       = module.eks.oidc_provider_url
}



output "jenkins_namespace" {
  description = "Kubernetes namespace where Jenkins is deployed"
  value       = module.jenkins.namespace
}

output "jenkins_release_name" {
  description = "Helm release name of the Jenkins deployment"
  value       = module.jenkins.release_name
}

output "jenkins_admin_user" {
  description = "Jenkins admin username"
  value       = module.jenkins.admin_user
}

output "jenkins_url" {
  description = "Jenkins external URL"
  value       = module.jenkins.service_hostname != null ? "http://${module.jenkins.service_hostname}:8080" : null
}

output "jenkins_agent_service_account" {
  description = "Service account used by Jenkins Kubernetes agents"
  value       = module.jenkins.agent_service_account_name
}

output "jenkins_kaniko_role_arn" {
  description = "IAM role used by Jenkins Kubernetes agents for ECR access"
  value       = module.jenkins.jenkins_kaniko_role_arn
}

output "argocd_namespace" {
  description = "Kubernetes namespace where Argo CD is deployed"
  value       = module.argo_cd.namespace
}

output "argocd_release_name" {
  description = "Helm release name of the Argo CD deployment"
  value       = module.argo_cd.release_name
}

output "argocd_server_service" {
  description = "Internal Argo CD server service address"
  value       = module.argo_cd.argo_cd_server_service
}

output "argocd_admin_password_command" {
  description = "Command to print initial Argo CD admin password"
  value       = module.argo_cd.admin_password_command
}