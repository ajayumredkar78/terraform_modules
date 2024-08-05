region                       = "ap-south-1"
project_name                 = "ajay_vpc"
vpc_cidr                     = "10.0.0.0/16"
public_subnet_az1_cidr       = "10.0.0.0/24"
public_subnet_az2_cidr       = "10.0.1.0/24"
private_app_subnet_az1_cidr  = "10.0.2.0/24"
private_app_subnet_az2_cidr  = "10.0.3.0/24"
private_data_subnet_az1_cidr = "10.0.4.0/24"
private_data_subnet_az2_cidr = "10.0.5.0/24"
instance_type                = "t2.micro"
key_name                     = "terrakey"
user_data                    = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt-get install apache2 -y
              sudo systemctl start apache2
              sudo bash -c 'echo Congratulations! on your first Webserver Installation > /var/www/html/index.html'
              EOF




