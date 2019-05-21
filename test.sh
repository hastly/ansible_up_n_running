ansible testserver -m ping
ansible testserver -m command -a uptime
ansible testserver -a "tail /var/log/auth.log" --become

