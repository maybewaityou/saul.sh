#!/bin/bash

echo "开始安装"
FILE=saul*

if test -e "$FILE"; then
  echo "====----"
fi

if [ test -e "$FILE" ]; then
  mv ./"$FILE" ./saul
  chmod +x ./saul
#  mv ./saul /usr/local/bin/
  mv ./saul ./test/
  echo "安装完成"
  exit 0
fi

echo "可执行文件不存在"
exit 1
