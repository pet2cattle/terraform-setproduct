vpc_id = "vpc-1a2b3c4d"

services = ["80", "443", "8080"]

ingress_rules = [
    {
        protocol = "tcp"
        cidr_blocks = [ "1.1.1.1/32", "2.2.2.2/32" ]
    },
    {
        protocol = "udp"
        cidr_blocks = [ "1.2.3.4/32" ]
    }
]