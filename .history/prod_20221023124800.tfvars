region = "us-east-1"

cidr_block  = "11.0.0.0/16"

subnet_cidr = ["11.0.0.0/24", "11.0.1.0/24", "11.0.3.0/24", "11.0.4.0/24"]
subnet_azs  = ["us-east-1a", "us-east-1b", "us-east-1a", "us-east-1b"]
subnet_name = ["public1", "private1", "public2", "private2"]

sg_name     = ["allow_ssh", "allow_ssh_vpc"]
sg_desc     = ["Allow SSH inbound traffic", "Allow SSH inbound traffic from VPC"]
sg_tags     = ["allow_ssh", "allow_ssh_vpc"]
sg_ports    = [22, 300]

ec2_names   = ["server_public", "server_private"]
ec2_ami = "ami-09d56f8956ab235b3"

db_name = "prod_db"
db_cluster_type = "db.t2.micro"
db_username = "prod_username"
db_password = "prod_password"