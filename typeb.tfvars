system = {
    type      = "b"
    cpu       = 4
    memory    = 4096
}


container = {
    type        = "var.system.type"
    cpu         = 2
    memory      = 512
}

container_2 = {
    type        = "X"
    cpu         = 1
    memory      = 1024
}


system_count    = 2
container_count = 2
