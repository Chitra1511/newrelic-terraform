
# resource "newrelic_api_access_key" "foobar" {
#   account_id  = "3983345"
#   key_type    = "INGEST"
#   ingest_type = "LICENSE"
#   name        = "APM Ingest License Key"
# }

# resource "newrelic_cloud_aws_link_account" "terraform" {
#   arn = "arn:aws:iam::069653090426:role/newrelic_monitor"
#   metric_collection_mode = "PULL"
#   name = "terraform"
# }
resource "newrelic_cloud_aws_integrations" "terraform" {
  linked_account_id = newrelic_cloud_aws_link_account.terraform-test.id
  ec2 {
    aws_regions              = ["us-east-1","us-east-2"]
    duplicate_ec2_tags       = true
    fetch_ip_addresses       = true
  }
  s3{

  }
  vpc {
    aws_regions = [ "us-east-1","us-east-2" ]
    fetch_nat_gateway        = true
  }
}

