#!/bin/sh
FUCK=$(git diff HEAD|grep diff|awk '{print $NF}'|sed -s "s/b\///g"|xargs)
echo $FUCK
chmod a-x $FUCK
sed -s -i 's/[[:space:]]*$//g' $FUCK
