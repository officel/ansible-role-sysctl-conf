Ansible Role: sysctl.conf
=========

[![Build Status](https://travis-ci.org/officel/ansible-role-sysctl-conf.svg?branch=master)](https://travis-ci.org/officel/ansible-role-sysctl-conf)
[![Ansible Role](https://img.shields.io/badge/galaxy-officel.sysctl--conf-blue.svg?maxAge=2592000)](https://galaxy.ansible.com/officel/sysctl-conf/)

set(init) /etc/sysctl.conf.

Requirements
------------

none.

Role Variables
--------------

sysctl_dict are

    sysctl_dict:
      - { k: net.ipv4.tcp_tw_recycle, v: 1 }

Dependencies
------------

none.

Example Playbook
----------------

    - hosts: all
      become: true
      roles:
         - officel.sysctl-conf

      or

         -{role: officel.sysctl-conf,
           sysctl_dict:
          }

License
-------

MIT / BSD

Author Information
------------------

This role was created by raki.
