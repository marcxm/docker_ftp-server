#!/bin/bash

/usr/sbin/vsftpd /etc/vsftpd.conf | tee /var/log/vsftpd_docker.log

