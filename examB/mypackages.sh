#!/bin/bash
ansible ansible2 -m package_facts | egrep -A 5 "samba|mariadb" > packages-out.txt
