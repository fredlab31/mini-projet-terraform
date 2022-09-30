variable "region" {
  type        = string
  description = "Région pour la création des ressources"
}
variable "availability_zone" {
  type        = string
  description = "AZ où créer les ressources"
}
variable "ebs_size" {
  type        = number
  description = "Taille de l'EBS"
}
variable "instance_type" {
  type        = string
  description = "Template a utiliser lors du lancement de l'instance"
}
variable "maintainer" {
  type        = string
  description = "Nom à utiliser dans les tags"
}
