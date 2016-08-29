#!/bin/bash
EXPECTED_ARGS=2
E_BADARGS=65

if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: `basename $0` {dir with rules} {output filename}"
  exit $E_BADARGS
fi

for file in `dir -d $1/*` ; do
echo -e "0001" >> $2
cat $file >> $2
echo -e "****" >> $2
done
# to get rid of the EOLs, :%s/\r//g
