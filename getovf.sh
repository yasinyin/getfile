#!/bin/bash
set -xv
##
# download the ovf from ftp
# @params $1 user
# @params $2 password
#

FTPHOST='10.100.212.186'
OVFPATH='/opt/vega_devops/tools/vega_preparecvm/ovf/vega-cvm-template'
FTPPATH='/1-vega/9.ovf/vega-cvm-template'

mkdir -p $OVFPATH
cd $OVFPATH
wget -r -nd ftp://$1:$2@$FTPHOST$FTPPATH
