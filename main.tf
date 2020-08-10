resource "aws_appsync_function" "default" {
  count                     = var.enabled ? 1 : 0
  api_id                    = var.api_id
  data_source               = var.data_source
  name                      = var.function_name
  request_mapping_template  = file(var.request_mapping_template)
  response_mapping_template = file(var.response_mapping_template)
}
