#!/bin/bash
#sudo git clone https://github.com/Pandurang1024/sys.git /var/chef/code
cd /var/chef1/code
cp  -a  prime_factors_kata /var/chef/
cd /var/chef1/code/rvmparts
cat rvm-part* > rvm.zip
cp rvm.zip /usr/local
cd /usr/local/
unzip rvm.zip
source /usr/local/rvm/scripts/rvm