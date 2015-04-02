#!/bin/bash
DOMAIN=$1
SNAPSHOT=$2
$HOME/kvmrc/vsuspend.sh \
  ; virsh destroy "$DOMAIN" \
  ; virsh snapshot-create-as "$DOMAIN" "$SNAPSHOT" \
  && virsh start "$DOMAIN" \
  && virsh snapshot-list --tree "$DOMAIN" \
  ; $HOME/loadrc/kvmrc/vresume.sh \
  ; $HOME/loadrc/bashrc/sleep.sh  
