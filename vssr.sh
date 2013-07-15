#!/bin/bash
DOMAIN=$1
SNAPSHOT=$2
$HOME/kvmrc/vsuspend.sh \
  ; virsh destroy "$DOMAIN" \
  ; virsh snapshot-revert --force "$DOMAIN" --snapshotname "$SNAPSHOT" \
  && virsh start "$DOMAIN" \
  ; $HOME/kvmrc/vresume.sh \
  && $HOME/bashrc/sleep.sh
