#!/bin/bash
XMLFILE=$1
DOMAIN=`echo "$XMLFILE" |sed 's/\.xml//g'`
virsh destroy "$DOMAIN" \
  ; virsh define "$XMLFILE" \
  ; virsh start "$DOMAIN" 
