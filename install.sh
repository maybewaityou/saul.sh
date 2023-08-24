#!/bin/bash
echo "开始安装"
DARWIN_ARM_FILE="saul-darwin-arm64"
DARWIN_AMD_FILE="saul-darwin-amd64"
WINDOWS_AMD_FILE="saul-windows-amd64.exe"
TARGET_FILE="saul"

if test -e "./$DARWIN_ARM_FILE"; then
  echo $DARWIN_ARM_FILE
  mv $DARWIN_ARM_FILE ./$TARGET_FILE
elif test -e "./$DARWIN_AMD_FILE"; then
  echo $DARWIN_AMD_FILE
  mv $DARWIN_AMD_FILE ./$TARGET_FILE
elif test -e "./$WINDOWS_AMD_FILE"; then
  TARGET_FILE="$TARGET_FILE.exe"
  echo $WINDOWS_AMD_FILE
  mv $WINDOWS_AMD_FILE ./$TARGET_FILE
else
  echo "Error: 可执行文件不存在"
  exit 1
fi

chmod +x ./$TARGET_FILE
mv ./$TARGET_FILE /usr/local/bin/
echo "安装完成"
exit 0
