data "aws_caller_identity" "_" {}

module "sns" {
  source  = "../modules/sns"
  commons = local.commons
  name    = "new_orders"
}
