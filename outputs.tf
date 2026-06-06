output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_1_id" {
  value = aws_subnet.public_subnet_1.id
}

output "public_subnet_2_id" {
  value = aws_subnet.public_subnet_2.id
}

output "private_subnet_1_id" {
  value = aws_subnet.private_subnet_1.id
}

output "private_subnet_2_id" {
  value = aws_subnet.private_subnet_2.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat.id
}

output "terraform_state_bucket" {
  value = aws_s3_bucket.terraform_state.bucket
}

output "terraform_lock_table" {
  value = aws_dynamodb_table.terraform_lock.name
}
output "eks_cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "eks_endpoint" {
  value = aws_eks_cluster.eks.endpoint
}
