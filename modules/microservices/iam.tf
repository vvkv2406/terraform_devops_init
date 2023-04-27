resource "aws_iam_role" "eks-stone-role" {
  name               = "eks-stone-cluster-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_iam_role_policy_attachment" "eks-stone-policy" {
  count = length(var.iam_policy_arn_eks)
  policy_arn = var.iam_policy_arn_eks[count.index]
  role       = aws_iam_role.eks-stone-role.name
  depends_on = [aws_iam_role.eks-stone-role]
}