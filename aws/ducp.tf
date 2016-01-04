resource "aws_security_group" "ducp" {
    name = "ducp"
    description = "DUCP traffic"

    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        self = true
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "ducp-controller" {
    ami = "${lookup(var.amis, var.region)}"
    instance_type = "m3.large"
    key_name = "${var.key_name}"

    security_groups = [ "${aws_security_group.ducp.name}" ]

    tags {
        Name = "ducp-controller"
        sshUser = "ubuntu"
    }
}

resource "aws_instance" "ducp-replica" {
    count = "${var.replica_count}"
    ami = "${lookup(var.amis, var.region)}"
    instance_type = "m3.large"
    key_name = "${var.key_name}"

    security_groups = [ "${aws_security_group.ducp.name}" ]

    tags {
        Name = "${concat("ducp-replica",count.index)}"
        sshUser = "ubuntu"
    }
}
