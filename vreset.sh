#!/bin/bash
TARGET=$1
virsh destroy "$TARGET" \
  ; virsh start "$TARGET"
