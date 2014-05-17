#!/bin/bash
TARGET=$1
qemu-img create -f qcow2 "$TARGET"  1000G
