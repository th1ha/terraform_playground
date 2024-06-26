resource "aws_iam_user" "new_users" {
  count = length(var.user_accounts)

  name = var.user_accounts[count.index]["user_name"]
  tags = {
    time_created = timestamp()
    department   = var.user_accounts[count.index]["dept"]
    ID_info      = var.user_accounts[count.index]["ID"]
  }
}

resource "aws_iam_user_policy_attachment" "Policy_attach" {
  depends_on = [ aws_iam_user.new_users ]
  count = length(var.user_accounts)

  user       = var.user_accounts[count.index]["user_name"]
  policy_arn = var.user_accounts[count.index]["policy"]
}