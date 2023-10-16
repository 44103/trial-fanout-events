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
  sns     = module.sns
}

module "sqs_analytics" {
  source  = "../modules/sqs"
  commons = local.commons
  name    = "analytics"
  sns     = module.sns
}
