#!/bin/bash

sudo apt-get update
sudo apt-get install -y net-tools uuid-runtime wget

sudo wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_7.0-1+ubuntu22.04_all.deb
sudo dpkg -i zabbix-release_7.0-1+ubuntu22.04_all.deb

sudo apt-get update
sudo apt install -y zabbix-agent2

sudo apt install -y zabbix-agent2-plugin-mongodb zabbix-agent2-plugin-mssql zabbix-agent2-plugin-postgresql

sudo systemctl enable zabbix-agent2
sudo systemctl restart zabbix-agent2