#  for metric monitor as stream data

# resource "newrelic_cloud_aws_link_account" "example" {
#   arn = "arn:aws:iam::069653090426:role/newrelic_monitor"
#   metric_collection_mode = "PUSH" 
#   name = "example"
# }


# for api call monitor


resource "newrelic_cloud_aws_link_account" "terraform-test" {
  arn = "arn:aws:iam::069653090426:role/newrelic_monitor"
  metric_collection_mode = "PULL"
  name = "terraform-test"
}