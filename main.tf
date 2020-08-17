resource "aws_appsync_function" "default" {
  count                     = var.enabled ? 1 : 0
  api_id                    = var.api_id
  data_source               = var.data_source
  name                      = var.function_name
  description               = var.description
  function_version          = var.function_version
  request_mapping_template  = var.request_mapping_template
  response_mapping_template = var.response_mapping_template
}
