resource "aws_instance" "ihos-ec3" {
  ami = var.ami
  instance_type = var.instance-type
  security_groups = [ aws_security_group.ihos-sec.name ]
  key_name = aws_key_pair.virgin-key.key_name
  user_data = file("user-data-updateEC2")

  tags = {
    Name = "virgin-ec3"
  }
}
