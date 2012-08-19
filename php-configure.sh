#! /bin/sh
#
# Created by configure

'./configure' \
'--prefix=/usr/local/php-5.3.10' \
'--with-config-file-path=/usr/local/php-5.3.10/etc' \
'--with-mysql=/usr/local/mysql' \
'--with-mysqli=mysqlnd' \
'--with-iconv-dir=/usr/local' \
'--with-freetype-dir' \
'--with-jpeg-dir' \
'--with-png-dir' \
'--with-zlib' \
'--with-libxml-dir' \
'--enable-xml' \
'--enable-safe-mode' \
'--enable-bcmath' \
'--enable-shmop' \
'--enable-sysvsem' \
'--enable-inline-optimization' \
'--with-curl' \
'--with-curlwrappers' \
'--enable-mbregex' \
'--enable-fpm' \
'--enable-mbstring' \
'--with-mcrypt' \
'--with-gd' \
'--enable-gd-native-ttf' \
'--with-openssl' \
'--with-mhash' \
'--enable-pcntl' \
'--enable-sockets' \
'--with-ldap' \
'--with-ldap-sasl' \
'--with-xmlrpc' \
'--enable-zip' \
'--enable-soap' \
"$@"

