resource "null_resource" "system" {
  count = var.system_count
  triggers = {
    #name = format("pensa-${var.system.type}-${var.system.memory}-${var.system.cpu}")
    name = "pensa${count.index}-${var.system.type}-${var.system.memory}-${var.system.cpu}"
  }
}

resource "null_resource" "container" {
  count = var.container_count
  triggers = {
    container_1 = "pensa${count.index}-${var.system.type}-${var.container.memory}-${var.container.cpu}"
    container_2 = "${var.system.type == "a" ? null : "pensa${count.index}-${var.container_2.type}-${var.container_2.memory}-${var.container_2.cpu}"}"
  }

  connection {
  host = "${var.system.type == "c" ? null : "element(null_resource.system.*.public_ip, 0)"}"
}

  provisioner "remote-exec" {
    inline = [
      "bootstrap-cluster.sh ${join(" ", null_resource.system.*.id)}",
    ]
  }
  depends_on = [ null_resource.system ]
}
