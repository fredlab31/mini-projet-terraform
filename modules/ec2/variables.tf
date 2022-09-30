variable "instance_type" {
  type        = string
  description = "Template a utiliser lors du lancement de l'instance"
}

variable "maintainer" {
  type        = string
  description = "Nom à utiliser dans les tags"
}

variable "key_name" {
  type        = string
  description = "Nom de la keypair créée par le module keygen"
}

variable "availability_zone" {
  type        = string
  description = "Availability Zone où créer l'EC2"
}
variable "public_ip" {
  type        = string
  description = "Elastic IP publique"
}
