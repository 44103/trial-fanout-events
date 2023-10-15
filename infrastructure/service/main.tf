data "aws_caller_identity" "_" {}

module "sns" {
  source  = "../modules/sns"
  commons = local.commons
  name    = "new_orders"
}

module "sqs_inventory" {
  source  = "../modules/sqs"
  commons = local.commons
  name    = "inventory"
}

module "sqs_analytics" {
  source  = "../modules/sqs"
  commons = local.commons
  name    = "analytics"
}
