resource "aws_appsync_function" "default" {
  for_each                  = var.enabled == true && length(var.function_config) > 0 ? { for f in var.function_config : f.name => f } : {}
  api_id                    = var.api_id
  data_source               = each.value.data_source
  name                      = each.value.name
  description               = each.value.description
  function_version          = each.value.version
  request_mapping_template  = file("${var.template_dir}/${each.value.request_mapping_template}")
  response_mapping_template = file("${var.template_dir}/${each.value.response_mapping_template}")
}
