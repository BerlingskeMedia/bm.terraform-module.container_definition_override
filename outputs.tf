
output "json" {
  description = "JSON encoded list of container definitions for use with other terraform resources such as aws_ecs_task_definition"
  value       = "[${join(",", local.json_map)}]"
}

output "json_map" {
  description = "JSON encoded container definitions for use with other terraform resources such as aws_ecs_task_definition"
  value       = local.json_map
}

output "object" {
  value = local.container_definition
}

output "container_name" {
  value = local.name
}