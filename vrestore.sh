#!/bin/bash
find /media/volgrp/kvm/save/ -type f -maxdepth 1 -name \*.save|while read ss; do virsh restore $ss;rm $ss; done
