#!/bin/bash

./configure --prefix=/usr/local/tengine-1.4.2 \
--with-http_stub_status_module \
--with-http_ssl_module \
--with-http_concat_module \
--with-http_realip_modlue
