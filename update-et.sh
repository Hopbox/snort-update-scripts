#!/bin/sh

SNORT_HOME='/etc/snort'

rm $SNORT_HOME/emerging.rules.tar.gz
wget -P $SNORT_HOME -c http://rules.emergingthreats.net/open-nogpl/snort-2.9.0/emerging.rules.tar.gz

tar -C $SNORT_HOME -xvzf $SNORT_HOME/emerging.rules.tar.gz

cp $SNORT_HOME/emerging.conf $SNORT_HOME/rules/emerging.conf

/etc/init.d/snort restart
