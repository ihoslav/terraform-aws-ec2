resource "aws_instance" "ihos-ec3" {
  ami = var.ami
  instance_type = var.instance-type
  security_groups = [ aws_security_group.ihos-sec.name ]
  key_name = "ssh-rsa AAAAB3NzaC1yAAAADAQABAAABAQC1g7DQ26+0t/cTY7Lxrs4/UU9Wo1EmcCVuv6GnZNROQ/mleWE1382Qib4d/fGDCAF7X4RTc6HctSOSonWjfIPoUbjJyjfv+po4nNiZ/sHKi5L2Xu+NVLWjloJYJpU5V8NaAMns/5EShQXull9C1yWK4LqeR8ERvbErg7DvEhRCjY+s6KlK486hs2gUKtP4WBVyuUF1YiCVqmBd6c19d5sRHPmdiFLVzGBRlCq0NdvEVh8hAL7kHDocNkH1gdlZWXMEmQ3vkD41zJq6jf6M7SQxLTuyp+dAF0APf51zVK01h7eGZNHecxxitK/Abr0TEYG/7U48hK0ZebUNj90ONWhx admin@ip-172-31-39-82"
  user_data = file("user-data-updateEC2")

  tags = {
    Name = "virgin-ec3"
  }
}
