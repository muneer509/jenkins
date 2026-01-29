resource "aws_instance" "ec2" {
  subnet_id                   = var.subnet_id
  instance_type               = "t3.micro"
  ami                         = data.aws_ami.ami_info.id  
  security_groups            = var.sg_id
  associate_public_ip_address = true
  

  tags = var.resource_name
  iam_instance_profile = data.aws_iam_role.existing_role.name
 
}


# --- Install Docker on RHEL via SSH (null_resource + remote-exec) ---
resource "null_resource" "install" {
  depends_on = [aws_instance.ec2]   # ensure instance is ready

  triggers = {
    instance_id = aws_instance.ec2.id
    # bump this to force re-run if needed
    setup_version = "v1"
  }

  connection {
    type        = "ssh"
    host        = aws_instance.ec2.public_ip
    user        = "ec2-user"                   # RHEL default
    password = "DevOps321"
     # path to your private key
  }

  
 provisioner "file" {
    source      = "workstation.sh"  # local path
    destination = "/tmp/workstation.sh" # remote path
  }

  # Now execute it (optional)
  provisioner "remote-exec" {
    inline = [
      "set -euxo pipefail",
      "sudo chmod +x /tmp/workstation.sh",
      "sudo sh /tmp/workstation.sh"
    ]
  }

}