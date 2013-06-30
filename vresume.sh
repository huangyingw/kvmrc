#!/bin/bash
virsh list|awk '/paused/{print $2}'|while read ss; do virsh resume $ss; done 
