
packer {
# define platform
  required_plugins {
    amazon = {
      source  = "github.com/hashicorp/amazon"
      version = "~> 1"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  ami_name      = "kts-base-ami-{{timestamp}}"
  instance_type = "t2.micro"
  region        = "us-east-1"
  source_ami_filter {
    filters = {
      name                = "kts-base-ami"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["254585114101"]
  }
  ssh_username = "ec2-user"
}

build {
# every thing in between, install configure etc...
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
  provisioner "shell" {
    inline = [
        "sudo yum update -y && sudo yum upgrade -y",
        "sudo yum clean all"
    ]
  }
}

