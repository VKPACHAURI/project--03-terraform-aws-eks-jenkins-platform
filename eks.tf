resource "aws_eks_cluster" "eks" {

  name = "project03-eks-cluster"

  role_arn = aws_iam_role.eks_cluster_role.arn

  version = "1.33"

  vpc_config {

    subnet_ids = [

      aws_subnet.public_subnet_1.id,
      aws_subnet.public_subnet_2.id,

      aws_subnet.private_subnet_1.id,
      aws_subnet.private_subnet_2.id
    ]
  }

  depends_on = [

    aws_iam_role_policy_attachment.eks_cluster_policy
  ]

  tags = {
    Name = "project03-eks-cluster"
  }
}
