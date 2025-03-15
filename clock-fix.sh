#!/bin/sh

ntpd stop
ntpdate pool.ntp.org
ntpd restart
