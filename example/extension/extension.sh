#!/bin/bash

mkdir /home/extension

# swoole
curl -Lk https://github.com/swoole/swoole-src/archive/v4.4.14.tar.gz | gunzip | tar x -C /home/extension && \
cd /home/extension/swoole-src-4.4.14 && \
/usr/local/php/bin/phpize && \
./configure --with-php-config=/usr/local/php/bin/php-config && \
make && make install

#redis
curl -Lk https://github.com/phpredis/phpredis/archive/refs/tags/5.3.4.tar.gz | gunzip | tar x -C /home/extension && \
cd /home/extension/phpredis-5.3.4 && \
/usr/local/php/bin/phpize && \
./configure --with-php-config=/usr/local/php/bin/php-config && \
make && make install

rm -rf /home/extension
