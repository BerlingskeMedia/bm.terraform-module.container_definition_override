locals {
  container_definition = [{
    name                   = lookup(var.string_overrides, "name", lookup(var.container_definition, "name", null))
    image                  = lookup(var.string_overrides, "image", lookup(var.container_definition, "image", null))
    essential              = tobool(lookup(var.string_overrides, "essential", lookup(var.container_definition, "essential", false)))
    entryPoint             = lookup(var.string_overrides, "entryPoint", lookup(var.container_definition, "entryPoint", null))
    command                = lookup(var.string_overrides, "command", lookup(var.container_definition, "command", null))
    workingDirectory       = lookup(var.string_overrides, "workingDirectory", lookup(var.container_definition, "workingDirectory", null))
    readonlyRootFilesystem = tobool(lookup(var.string_overrides, "readonlyRootFilesystem", lookup(var.container_definition, "readonlyRootFilesystem", null)))
    mountPoints            = lookup(var.string_overrides, "mountPoints", lookup(var.container_definition, "mountPoints", null))
    dnsServers             = lookup(var.string_overrides, "dnsServers", lookup(var.container_definition, "dnsServers", null))
    ulimits                = lookup(var.string_overrides, "ulimits", lookup(var.container_definition, "ulimits", null))
    repositoryCredentials  = lookup(var.string_overrides, "repositoryCredentials", lookup(var.container_definition, "repositoryCredentials", null))
    links                  = lookup(var.string_overrides, "links", lookup(var.container_definition, "links", null))
    volumesFrom            = lookup(var.string_overrides, "volumesFrom", lookup(var.container_definition, "volumesFrom", null))
    user                   = lookup(var.string_overrides, "user", lookup(var.container_definition, "user", null))
    dependsOn              = lookup(var.string_overrides, "dependsOn", lookup(var.container_definition, "dependsOn", null))
    privileged             = lookup(var.string_overrides, "privileged", lookup(var.container_definition, "privileged", null))
    portMappings           = length(var.port_mapping) > 0 ? var.port_mapping : lookup(var.container_definition, "portMappings", null)
    healthCheck            = lookup(var.string_overrides, "healthCheck", lookup(var.container_definition, "healthCheck", null))
    firelensConfiguration  = lookup(var.string_overrides, "firelensConfiguration", lookup(var.container_definition, "firelensConfiguration", null))
    logConfiguration       = lookup(var.string_overrides, "logConfiguration", lookup(var.container_definition, "logConfiguration", null))
    memory                 = tonumber(lookup(var.string_overrides, "memory", lookup(var.container_definition, "memory", null)))
    memoryReservation      = tonumber(lookup(var.string_overrides, "memoryReservation", lookup(var.container_definition, "memoryReservation", null)))
    cpu                    = tonumber(lookup(var.string_overrides, "cpu", lookup(var.container_definition, "cpu", null)))
    environment            = length(var.environment) > 0 ? var.environment : lookup(var.container_definition, "environment", null)
    secrets                = lookup(var.string_overrides, "secrets", lookup(var.container_definition, "secrets", null))
    dockerLabels           = lookup(var.string_overrides, "dockerLabels", lookup(var.container_definition, "dockerLabels", null))
    startTimeout           = tonumber(lookup(var.string_overrides, "startTimeout", lookup(var.container_definition, "startTimeout", null)))
    stopTimeout            = tonumber(lookup(var.string_overrides, "stopTimeout", lookup(var.container_definition, "stopTimeout", null)))
    systemControls         = lookup(var.string_overrides, "systemControls", lookup(var.container_definition, "systemControls", null))
  }]

  json_map = [for elem in local.container_definition : jsonencode(elem)]
}

