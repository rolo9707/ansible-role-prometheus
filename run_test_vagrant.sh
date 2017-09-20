#!/bin/bash
set +x

if [ ! -d "/vagrant/tests/roles "]
then
  mkdir -p /vagrant/tests/roles
fi

if [ ! -d "/vagrant/tests/roles/ansible.prometheus"]
then
  ln -s /vagrant/tests/roles/ansible-prometheus /vagrant
fi

ansible-playbook -i tests/inventory --connection=local tests/vagranttest.yml
