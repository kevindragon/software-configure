#!/bin/sh

# before this you should add user nagios
# groupadd nagios
# useradd -g nagios nagios
#
# nrpe install script

./configure --prefix=/usr/local/nagios

make all

make install