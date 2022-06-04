# sudo chmod 755 variable-printer.sh
# ./variable-printer.sh
ansible -m ping all -i inventories/hybrid/hosts
ansible -a '/usr/bin/uptime' all -i inventories/hybrid/hosts
ansible-playbook playbooks/hybrid/system-updates-playbook.yml -i inventories/hybrid/hosts --ask-become-pass -vv
