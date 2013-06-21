#!/bin/sh
#
# 


'./configure' \
'--prefix=/usr/local/php-5.2.17' \
'--with-config-file-path=/usr/local/php-5.2.17/etc' \
'--with-mysql=/usr/' \
'--with-mysqli=/usr/bin/mysql_config' \
'--enable-sigchild' \
'--enable-ftp' \
'--with-mcrypt' \
'--with-openssl' \
'--with-xsl' \
'--enable-fastcgi' \
'--enable-fpm' \
'--enable-force-cgi-redirect' \
'--enable-sockets' \
'--enable-pcntl' \
'--with-mime-magic' \
'--with-zlib' \
'--with-gd' \
'--enable-gd-native-ttf' \
'--with-freetype-dir' \
'--with-jpeg-dir' \
'--with-png-dir' \
'--with-gettext' \
'--with-iconv' \
'--enable-mbstring=all' \
'--enable-mbregex' \
'--with-libxml-dir' \
'--enable-xml' \
'--with-curl'
"$@"