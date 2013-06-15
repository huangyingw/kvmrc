#!/bin/bash
DOMAIN=$1
SNAPSHOT=$2
~/kvmrc/vssd.sh "$DOMAIN" "$SNAPSHOT"
~/kvmrc/vssc.sh "$DOMAIN" "$SNAPSHOT"
