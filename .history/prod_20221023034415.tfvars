cidr_block  = "11.0.0.0/16"

subnet_cidr = ["11.0.0.0/24", "11.0.1.0/24", "11.0.3.0/24", "11.0.4.0/24"]
subnet_azs  = ["us-east-1a", "us-east-1b", "us-east-1a", "us-east-1b"]
subnet_name = ["public1", "private1", "public2", "private2"]

sg_name     = ["allow_ssh", "allow_ssh_vpc"]
sg_desc     = ["Allow SSH inbound traffic", "Allow SSH inbound traffic from VPC"]
sg_cider    = ["0.0.0.0/0", "${aws_vpc.name.cidr_block}"]
sg_tags     = ["allow_ssh", "allow_ssh_vpc"]
sg_ports    = [22, 300]

ec2_names   = ["server_public", "server_private"]
