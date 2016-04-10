#!/usr/bin/bash
export PATH=/usr/bin:$PATH
cd /vagrant
/usr/bin/ansible-playbook --extra-vars "host_variable=localhost" --extra-vars "es_mem=1g" site.yml
