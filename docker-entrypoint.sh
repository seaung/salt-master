#!/bin/bash

sed -i 's/#auto_accept: False/auto_accept: True/g' /etc/salt/master

/usr/bin/salt-master start -d -l info

/bin/bash
