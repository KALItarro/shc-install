#!/bin/bash
rm -rf /bin/shc
yum install gcc -y
tar zxf shc-*.tgz
cd ./shc-*/
gcc shc-*.c -o shc
mv shc /bin
clear
echo "脚本位置在$(which shc)"
[ $? -eq 0 ] && echo "部署成功" || echo "部署失败"
echo '使用方法: shc -r -f 脚本.sh'
echo "鲍海超-GNUBHCkalitarro编写"
