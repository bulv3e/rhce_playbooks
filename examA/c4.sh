#!/bin/bash
ansible all -u root -k -m dnf -a "name=python3.9"
ansible all -u root -k -m user -a "name=ansible"
ansible all -u root -k -m file -a "path=/home/ansible/.ssh state=directory owner=ansible group=ansible mode=0700"
ansible all -u root -k -m copy -a "src=/home/ansible/.ssh/id_rsa.pub dest=/home/ansible/.ssh/authorized_keys"
ansible all -u root -k -m copy -a "content='ansible    ALL=(ALL)       NOPASSWD: ALL' dest=/etc/sudoers.d/ansible mode=640"
