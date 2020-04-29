variable "container_definition" {
  type = object({
    command = string
    cpu = number
    dependsOn = string
    dnsServers = string
    dockerLabels = string
    entryPoint = string
    environment = list(object({
      name = string
      value = string
    }))
    essential = string
    firelensConfiguration = string
    healthCheck = string
    image = string
    links = string
    logConfiguration = string
    memory = number
    memoryReservation = number
    mountPoints = string
    name = string
    portMappings = list(object({
      containerPort = number
      hostPort = number
      protocol = string
    }))
    privileged = string
    readonlyRootFilesystem = bool
    repositoryCredentials = string
    secrets = string
    startTimeout = number
    stopTimeout = number
    systemControls = string
    ulimits = string
    user = string
    volumesFrom = string
    workingDirectory = string
  })
  description = "Original container definition"
  default = {
    command = null
    cpu = 256
    dependsOn = null
    dnsServers = null
    dockerLabels = null
    entryPoint = null
    environment = []
    essential = true
    firelensConfiguration = null
    healthCheck = null
    image = mull
    links = null
    logConfiguration = null
    memory = 256
    memoryReservation = 128
    mountPoints = null
    name = null
    portMappings = [
      {
        containerPort = 80
        hostPort = 80
        protocol = "tcp"
      }
    ]
    privileged = null
    readonlyRootFilesystem = false
    repositoryCredentials = null
    secrets = null
    startTimeout = 30
    stopTimeout = 30
    systemControls = null
    ulimits = null
    user = null
    volumesFrom = null
    workingDirectory = null
  }
}

variable "environment" {
  type = list(object({
      name = string
      value = string
    }))
  default = []
}

variable "string_overrides" {
  type = map(string)
  default = {}
}
variable "port_mapping" {
  type = list(object({
    containerPort = number
    hostPort = number
    protocol = string
  }))
  default = [
      {
        containerPort = 80
        hostPort = 80
        protocol = "tcp"
      }
    ]
}
