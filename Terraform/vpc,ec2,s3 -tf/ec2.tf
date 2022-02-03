resource "aws_instance" "web1" {
    ami = "ami-03fa4afc89e4a8a09"
    instance_type = "t2.micro"
    subnet_id = "${aws_subnet.public[0].id}"
    vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
    key_name = "AWSPractice"
    }