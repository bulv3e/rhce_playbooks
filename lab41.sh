#!/bin/bash

ansible web -m yum -a "name=httpd state=installed"
ansible web -m service -a "name=httpd enabled=yes state=started"
ansible all -m user -a "name=anna"
ansible all -m copy -a "src=/etc/hosts dest=/tmp/"