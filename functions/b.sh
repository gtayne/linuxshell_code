#!/bin/bash
[ -f /test/functions ]&& . /root/tc_shell/functions/argument ||exit 1
student $1

