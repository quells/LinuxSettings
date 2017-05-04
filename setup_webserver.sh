#!/bin/bash

# Set up web stack
apt-get install nginx;

# Set up firewall
ufw allow ssh;
ufw allow "Nginx http";
ufw enable;
