region = "eu-central-1"

cidr_block  = "11.0.0.0/16"

subnet_cidr = ["11.0.0.0/24", "11.0.1.0/24", "11.0.3.0/24", "11.0.4.0/24"]
subnet_azs  = ["eu-central-1a", "eu-central-1b", "eu-central-1a", "eu-central-1b"]
subnet_name = ["public1", "private1", "public2", "private2"]

sg_name     = ["allow_ssh", "allow_ssh_vpc"]
sg_desc     = ["Allow SSH inbound traffic", "Allow SSH inbound traffic from VPC"]
sg_tags     = ["allow_ssh", "allow_ssh_vpc"]
sg_ports    = [22, 300]

ec2_names   = ["server_public", "server_private"]
ec2_ami = "ami-0caef02b518350c8b"

db_name = "dev_db"
db_cluster_type = "db.t2.micro"
db_username = "dv_username"
db_password = "dv_password"

elasticache_engine = "redis"
elasticache_node_type = "cache.t2.micro"
elasticache_node_no = 1