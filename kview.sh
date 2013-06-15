#!/bin/bash
port=`~/kvmrc/vsdx.sh "$1" |grep vnc|grep -ow '[0-9]\{4\}'`
vncviewer localhost:$port
