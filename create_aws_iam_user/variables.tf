variable "user_accounts" {
  description = "New IAM user info"
  type = list(map(string))
  default = [
    {
      "user_name" = "kyawkyaw"
      "dept"      = "QA"
      "ID"        = "111111"
      "policy"    = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
    },
    {
      "user_name" = "mgmg"
      "dept"      = "Developer"
      "ID"        = "222222"
      "policy"    = "arn:aws:iam::aws:policy/AdministratorAccess"
    }
  ]
}
