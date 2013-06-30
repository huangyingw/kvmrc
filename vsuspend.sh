#!/bin/bash
virsh list|awk '/running/{print $2}'|while read ss; do virsh suspend $ss; done
