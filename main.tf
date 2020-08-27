resource "aws_appsync_function" "default" {
  for_each                  = var.enabled == true && length(var.functions_config) > 0 ? { for f in var.functions_config : f.name => f } : {}
  api_id                    = var.api_id
  data_source               = each.value.data_source
  name                      = each.value.name
  description               = each.value.description
  function_version          = each.value.function_version
  request_mapping_template  = file("${var.template_dir}/${each.value.request_mapping_templates}")
  response_mapping_template = file("${var.template_dir}/${each.value.response_mapping_template}")
}
