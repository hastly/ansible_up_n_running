vagrant up

ansible testserver -m ping
ansible testserver -m command -a uptime
ansible testserver -a "tail /var/log/auth.log" --become
ansible-playbook playbooks/01.install_nginx.yml
curl 127.0.0.1:18080
ansible-playbook playbooks/-01.remove_nginx.yml
curl 127.0.0.1:18080

vagrant destroy -f
yes | rm playbooks/*.retry

