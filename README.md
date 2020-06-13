# docker_ftp-server
very simple docker implementation of vsftpd.

1. change vsftpd.conf's last line to your share location if required [needs to match what's in docker-compose.yml's volume section, though]
2. change docker-compose.yml's volume section to match local directory you would like to share
3. change user / pass in "gecko" line in Dockerfile
4. docker-compose up -d
