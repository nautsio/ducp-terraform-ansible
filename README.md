# ducp-terraform-ansible

## Goal
Setting up Docker Universal Control Plane with the use of Terraform and Ansible.

## Instructions
### Clone
Clone this repository recursively (because of added submodule for terraform.py)

```git clone https://github.com/nautsio/ducp-terraform-ansible.git --recursive```
### AWS / GCP
In aws or gce directory:

```cp terraform.tfvars{.example,}```

Insert the correct variables for you setup

### Ansible
In ansible directory

```cp vars.yml{.example,}```

Change directory to the chose provider (aws/gce), then run ansible-playbook:

```
cd ../{aws,gce}
TERRAFORM_STATE_ROOT=. ansible-playbook -i ../terraform.py/terraform.py \
                       ../ansible/site.yml \
                       --extra-vars "@../ansible/vars.yml"
```
