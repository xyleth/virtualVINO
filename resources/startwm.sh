#!/bin/sh

if [ -r /etc/default/locale ]; then
  . /etc/default/locale
  export LANG LANGUAGE
fi
#xrdp multiple users configuration
 mate-session


. /etc/X11/Xsession