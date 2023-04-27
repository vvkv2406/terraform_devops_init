output "endpoint" {
  value = aws_eks_cluster.eks-webapp.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.eks-webapp.certificate_authority[0].data
}

output "stone_ecr_repository_url" {
  value = aws_ecr_repository.stone-ecr.repository_url
}
