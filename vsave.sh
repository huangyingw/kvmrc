#!/bin/bash
if [ -z "$1" ];
then
  virsh list|awk '/running/{print $2}'|while read ss; do virsh save $ss; done
else
  virsh save "$1"
fi
