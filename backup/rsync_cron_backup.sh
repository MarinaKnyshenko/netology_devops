#!/bin/bash
rsync -a --exclude=".*" /home/mknyshenko/ /tmp/backup >>/var/log/syslog 2>>/var/log/syslog