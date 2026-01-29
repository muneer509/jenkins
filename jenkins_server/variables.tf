variable "sg_id" {
  default = ["sg-0670763c62c77ba9b"]
}
variable "subnet_id" {
  default = "subnet-03f6a20a70a34abc8"
}
variable "resource_name" {
  default = {
    Name = "k8-workstation"
    resource_type = "server"
    Owner = "Muneer"
    Environment = "Test"
    component = "k8-workstation"
  }
}