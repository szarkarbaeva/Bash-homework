#!/bin/bash


function kpop() {
	sudo useradd jenny
	sudo useradd rose
	sudo useradd lisa
	sudo useradd jisoo
	sudo groupadd blackpink
	sudo usermod -aG blackpink jenny
	sudo usermod -aG blackpink rose
	sudo usermod -aG blackpink lisa
	sudo usermod -aG blackpink jisoo
}

function wordpress() {
	sudo dnf install wget php-mysqlnd httpd php-fpm php-mysqli mariadb105-server php-json php php-devel -y
	sudo systemctl restart httpd
	wget https://wordpree.org/latest.tar.gz
	tar -xzf latest.tar.gz
	ls
	sudo chown ec2-user wordpress/*
	sudo chmod 755 wordpress/*
        sudo mv wordpree/* /var/www/html
	sudo rm -r /var/www/html/index.html
}
function calculator() {
	sudo $((12*4))
	sudo $((12-4))
	sudo $((12+4))
	sudo $((12/4))
}

function binary() {
	sudo yum install tree -y
	sudo yum install -y yum utils shadow-utils
	sudo yum-config-manager --add-repo https://rpm.release.hashicorp.com/amazinLinux/hashicorp.repo
	sudo yum -y install terraform
	sudo ls /etc/yum.repos.d
}
kpop
wordpress
calculator
binary
