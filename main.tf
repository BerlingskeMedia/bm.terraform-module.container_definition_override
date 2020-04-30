locals {
  source = element(var.container_definition, 0)

  name = var.name != null ? var.name : lookup(local.source, "name", null)

  container_definition = [{
    name                   = local.name
    image                  = var.image != null ? var.image : lookup(local.source, "image", null)
    essential              = var.essential != null ? var.essential : lookup(local.source, "essential", null)
    entryPoint             = var.entrypoint != null ? var.entrypoint : lookup(local.source, "entryPoint", null)
    cpu                    = var.cpu != null ? var.cpu : lookup(local.source, "cpu", null)
    command                = var.command != null ? var.command : lookup(local.source, "command", null)
    workingDirectory       = var.workingDirectory != null ? var.workingDirectory : lookup(local.source, "workingDirectory", null)
    readonlyRootFilesystem = var.readonly_root_filesystem != null ? var.readonly_root_filesystem : lookup(local.source, "readonlyRootFilesystem", null)
    mountPoints            = var.mountPoints != null ? var.mountPoints : lookup(local.source, "mountPoints", null)
    dnsServers             = var.dnsServers != null ? var.dnsServers : lookup(local.source, "dnsServers", null)
    ulimits                = var.ulimits != null ? var.ulimits : lookup(local.source, "ulimits", null)
    repositoryCredentials  = var.repositoryCredentials != null ? var.repositoryCredentials : lookup(local.source, "repositoryCredentials", null)
    links                  = var.links != null ? var.links : lookup(local.source, "links", null)
    volumesFrom            = var.volumesFrom != null ? var.volumesFrom : lookup(local.source, "volumesFrom", null)
    user                   = var.user != null ? var.user : lookup(local.source, "user", null)
    dependsOn              = var.dependsOn != null ? var.dependsOn : lookup(local.source, "dependsOn", null)
    privileged             = var.privileged != null ? var.privileged : lookup(local.source, "privileged", null)
    portMappings           = var.portMappings != null ? var.portMappings : lookup(local.source, "portMappings", null)
    healthCheck            = var.healthCheck != null ? var.healthCheck : lookup(local.source, "healthCheck", null)
    firelensConfiguration  = var.firelensConfiguration != null ? var.firelensConfiguration : lookup(local.source, "firelensConfiguration", null)
    logConfiguration       = var.logConfiguration != null ? var.logConfiguration : lookup(local.source, "logConfiguration", null)
    memory                 = var.memory != null ? var.memory : lookup(local.source, "memory", null)
    memoryReservation      = var.memoryReservation != null ? var.memoryReservation : lookup(local.source, "memoryReservation", null)
    environment            = var.environment != null ? var.environment : lookup(local.source, "environment", null)
    secrets                = var.secrets != null ? var.secrets : lookup(local.source, "secrets", null)
    dockerLabels           = var.dockerLabels != null ? var.dockerLabels : lookup(local.source, "dockerLabels", null)
    startTimeout           = var.startTimeout != null ? var.startTimeout : lookup(local.source, "startTimeout", null)
    stopTimeout            = var.stopTimeout != null ? var.stopTimeout : lookup(local.source, "stopTimeout", null)
    systemControls         = var.systemControls != null ? var.systemControls : lookup(local.source, "systemControls", null)
  }]

  json_map = [for elem in local.container_definition : jsonencode(elem)]
}

