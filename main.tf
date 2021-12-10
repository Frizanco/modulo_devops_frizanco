resource "aws_instance" "web" {
  ami           = "ami-0e66f5495b4efdd0f"
  subnet_id                   = "subnet-0bc78dd75eb924a43"
  instance_type               = var.tipo
  key_name                    = "cert-turma3-frizanco-dev"
  associate_public_ip_address = true
  vpc_security_group_ids      = ["sg-02d78afe948cd36bf"]
  root_block_device {
    encrypted   = true
    volume_size = 8
  }
  tags = {
    Name = "${var.nome}",
    Itau = true
  }
}
