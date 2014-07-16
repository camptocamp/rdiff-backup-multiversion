#!/bin/sh

for i in /opt/rdiff-backup/*; do
  cd $i && python setup.py install --prefix=$i
done

exit 0
