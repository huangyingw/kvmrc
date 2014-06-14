#!/bin/bash
if [ -z "$1" ];
then
  virsh list|awk '/running/{print $2}'|while read ss; do virsh save $ss /media/volgrp/kvm/save/$ss.save; done
else
  virsh save "$1" /media/volgrp/kvm/save/"$1".save
fi
