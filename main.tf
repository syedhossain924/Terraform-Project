provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "RHEL-VM-Server" {
  count         = 1
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = "t2.medium"
  key_name      = "VS_Keypair"
  tags = {
    Name = "RHEL-VM-Server"
  }
  root_block_device {
    volume_size = 12
    volume_type = "gp3"
    encrypted   = true
  }

}
