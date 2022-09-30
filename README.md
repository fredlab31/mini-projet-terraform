Mini-Projet Terraform
=========
N'oubliez pas de renseigner vos clés d'accès à AWS dans le fichier app/main.tf !

Création de ressources sur AWS :
* Un EC2
* Un EBS rattaché à l'EC2
* Une EIP rattachée à l'EC2
* Un SG auquel appartient l'EC2
* Une keypair ssh rattachée à l'EC2 

L'EC2 a un serveur nginx déployé dessus.
Le serveur est accessible à l'IP publique renseignée dans le fichier ip_ec2.txt

Variables modifiables dans le terraform.tfvars :
* instance_type = Le type d'instance pour l'EC2
* ebs_size = La taille de l'EBS
* region = La région AWS
* maintainer = Le tag rajouté aux ressources créées
* availability_zone = L'AZ pour l'EC2 et l'EBS