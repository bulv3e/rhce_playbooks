#!/bin/bash
ansible all -m dnf -a "name=python39" -u root -k
ansible all -m user -a "name=ansible" -u root -k
ansible all -m file -a "path=/home/ansible/.ssh state=directory owner=ansible group=ansible mode=0700" -u root -k
ansible all -m copy -a "src=/home/ansible/.ssh/id_rsa.pub dest=/home/ansible/.ssh/authorized_keys owner=ansible group=ansible mode=0600" -u root -k
ansible all -m copy -a "content='ansible        ALL=(ALL)       NOPASSWD: ALL' dest=/etc/sudoers.d/ansible owner=root group=root mode=0600" -u root -k
ansible all -m ping -b
