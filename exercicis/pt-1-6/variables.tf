variable "region" {
  default = "us-east-1"
}

variable "allowed_ip" {
  type        = string
  description = "IP que podrá acceder al bastion (ej. 2.3.6.0/32)"
}

variable "private_instance_count" {
  type        = number
  default     = 3
}