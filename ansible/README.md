# Demo Scripts for Ansible

## new-volume-create.yml
Create a new Volume on NetApp ONTAP.

## configure-svm-4-trident/svm-create-playbook.yaml
* Create new SVM and assign aggregates to aggr-list
* Create nfs data lif
* modify default export-polcy to any/any with client match 0.0.0.0/0
* Create new vsadmin tridentadmin with following application: ssh/ontapi/http

all required parametes in vars.yaml
´ ansible-playbook svm-create-playbook.yaml

##  motd/playbook-motd.yml
change the MOTD of an unix/linux server
