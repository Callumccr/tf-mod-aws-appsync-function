# -----------------------------------------------------------------------------
# Outputs: TF-MOD-AWS-APPSYNC-FUNCTION 
# -----------------------------------------------------------------------------

output "config" {
  value       = { for f in aws_appsync_function.default : f.name => { "name" = f.name, "function_id" = f.function_id } }
  description = "The ID && Name of the functions"
}
