resource "google_compute_instance" "ducp-controller" {
    name = "ducp-controller"
    machine_type = "n1-standard-1"
    zone = "${var.zone}"
    tags = ["https-server"]

    disk {
        image = "ubuntu-1404-trusty-v20151113"
        type = "pd-ssd"
    }

    network_interface {
        network = "default"
        access_config {
        }
    }

    metadata {
        ssh_user = "${var.ssh_user}"
    }

}

resource "google_compute_instance" "ducp-replica" {
    count = "${var.replica_count}"
    name = "${concat("ducp-replica",count.index)}"
    machine_type = "n1-standard-1"
    zone = "${var.zone}"
    tags = ["https-server"]

    disk {
        image = "ubuntu-1404-trusty-v20151113"
        type = "pd-ssd"
    }

    network_interface {
        network = "default"
        access_config {
        }
    }

    metadata {
        ssh_user = "${var.ssh_user}"
    }
}
