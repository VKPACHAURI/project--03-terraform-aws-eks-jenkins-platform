resource "aws_eks_node_group" "nodes" {

  cluster_name = aws_eks_cluster.eks.name

  node_group_name = "project03-node-group"

  node_role_arn = aws_iam_role.node_group_role.arn

  subnet_ids = [

    aws_subnet.private_subnet_1.id,
    aws_subnet.private_subnet_2.id
  ]

  capacity_type = "ON_DEMAND"

  instance_types = [
    "t3.medium"
  ]

  scaling_config {

    desired_size = 2

    min_size = 2

    max_size = 3
  }

  update_config {

    max_unavailable = 1
  }

  depends_on = [

    aws_iam_role_policy_attachment.worker_node_policy,
    aws_iam_role_policy_attachment.cni_policy,
    aws_iam_role_policy_attachment.ecr_readonly
  ]

  tags = {
    Name = "project03-node-group"
  }
}