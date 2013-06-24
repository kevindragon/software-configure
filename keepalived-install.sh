#!/bin/sh

# keepalived install script

./configure --prefix=/usr/local/keepalived-1.2.7

make

make install