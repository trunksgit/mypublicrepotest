region              = "us-east-1"
trunks-vpc-info = {
    vpc_cidr = "10.100.0.0/16"
    subnets_azs = ["a", "b", "a", "b","a", "b"]
    subnet_names = ["app1", "app2", "db1", "db2", "web1", "web2"]
}