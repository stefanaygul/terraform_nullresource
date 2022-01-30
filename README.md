# terraform_nullresource

- For default system and container object

$ terraform plan
$ terraform apply

- For type b system and container object

$ terraform plan -var-file="typeb.tfvars"
$ terraform apply -var-file="typeb.tfvars"

- For type c system and no associate container

$ terraform plan -var-file="typec.tfvars"
$ terraform plan -var-file="typec.tfvars"
