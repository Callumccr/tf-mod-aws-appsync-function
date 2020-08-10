# -----------------------------------------------------------------------------
# Outputs: TF-MOD-AWS-APPSYNC-FUNCTION 
# -----------------------------------------------------------------------------

output "arn" {
  value       = aws_appsync_function.default.*.arn
  description = "The ARN of the Function object."
}

output "id" {
  value       = aws_appsync_function.default.*.arn
  description = "API Function ID (Formatted as ApiId-FunctionId)"
}

output "function_id" {
  value       = aws_appsync_function.default.*.arn
  description = "A unique ID representing the Function object."
}



