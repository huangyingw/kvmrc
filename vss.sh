#!/bin/bash
DOMAIN=$1
$HOME/kvmrc/vrestore.sh "$DOMAIN" \
  ;virsh start "$DOMAIN"
