#!/bin/bash
ansible all -m shell -a "sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/*.repo"
ansible all -m yum_repository -a "name=baseos-custom description=custom-baseos-repo baseurl=ftp://192.168.1.2/BaseOS file=baseos-custom gpgcheck=no enabled=yes"
ansible all -m yum_repository -a "name=appstream-custom description=custom-appstream-repo baseurl=ftp://192.168.1.2/AppStream file=appstream-custom gpgcheck=no enabled=yes"
