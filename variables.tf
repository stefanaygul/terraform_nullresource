variable system {
  type = object({
    cpu             = number
    memory          = number
    type            = string
  })

  default = {
    cpu             = 2
    memory          = 2048
    type            = "a"
  }
}


variable container {
  type = object({
    cpu             = string
    memory          = string
    type            = string
#    host_system     = string
  })

  default = {
    cpu             = "1"
    memory          = "1024"
    type            = "var.system.type"
#    host_system     = ""
  }
}

variable container_2 {
  type = object({
    cpu             = string
    memory          = string
    type            = string
#    host_system     = string
  })

  default = {
    cpu             = ""
    memory          = ""
    type            = ""
#    host_system     = ""
  }
}

variable "system_count" {
  default = 2
}
variable "container_count" {
  default = 2
}
