#!/bin/bash
set -xv
##
# download the ovf from ftp
# @params $1 user
# @params $2 password
#

FTPHOST='10.100.212.186'
SAVEPATH='/opt/vega_devops/containers/build/baseimages'
FTPPATH='/1-vega/8.docker-image/vega_preparecvm.tar'

mkdir -p $SAVEPATH
cd $SAVEPATH
wget -r -nd ftp://$1:$2@$FTPHOST$FTPPATH
