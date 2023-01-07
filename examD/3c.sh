#!/bin/bash
ansible all -m shell -a "sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/*"
ansible all -m yum_repository -a "name=custom-baseos description=custom-baseos baseurl=ftp://192.168.1.2/BaseOS gpgcheck=no enabled=yes"
ansible all -m yum_repository -a "name=custom-appstream description=custom-appstream baseurl=ftp://192.168.1.2/AppStream gpgcheck=no enabled=yes"
