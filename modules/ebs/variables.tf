variable "ebs_availability_zone" {
  type        = string
  description = "Availability Zone où créer l'EBS"
}
variable "ebs_size" {
  type        = number
  description = "Taille de l'EBS"
}
variable "maintainer" {
  type        = string
  description = "Nom à utiliser dans les tags"
}
