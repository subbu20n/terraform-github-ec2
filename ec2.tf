resource "aws_instance" "this" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro" 
    vpc_security_group_ids = [aws_vpc_security_group_ids] 

    tags = {
        name = "terraform-demo" 
        purpose = "terraform-practice" 
    }
}

resource "aws_security_group" "this" {
    name = "allow-tls_1" 
    description = "Allow TLS inbound and outboumd traffic" 

    ingress {
        from_port = 22 
        to_port   = 22 
        protocol  = "tcp" 
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0 
        to_port   = 0
        protocol  = "-1" 
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        name = "allow-tls"
    }
}