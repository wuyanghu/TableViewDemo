#!/bin/sh

#  tcprelay_2222_1236.sh
#  iOSREHeaders
#
#  Created by ruantong on 2019/7/7.
#  Copyright © 2019 wupeng. All rights reserved.
#/Users/ruantong/code/USBSSH/tcprelay.py -t 22:2222

if [ $1 == 'ssh2222' ];then
    /Users/ruantong/code/USBSSH/tcprelay.py -t 22:2222
elif [ $1 == 'localhost' ];then
    ssh root@localhost -p 2222
elif [ $1 == 'debugserver' ];then
    debugserver *:1236 -a "Youkui4Phone"
elif [ $1 == 'ssh1236' ];then
    /Users/ruantong/code/USBSSH/tcprelay.py -t 1236:1236
elif [ $1 == 'lldb' ];then
    /Applications/Xcode2.app/Contents/Developer/usr/bin/lldb
elif [ $1 == 'connect' ];then
    process connect connect://localhost:1236
elif [ $1 == 'make' ];then
     cd /Users/ruantong/Desktop/migu/reveseiosproejct
     make
elif [ $1 == 'package' ];then
    cd /Users/ruantong/Desktop/migu/reveseiosproejct
    make package
elif [ $1 == 'install' ];then
    cd /Users/ruantong/Desktop/migu/reveseiosproejct
    make package install
elif [ $1 == 'clean' ];then
     cd /Users/ruantong/Desktop/migu/reveseiosproejct
     make clean
elif [ $1 == 'diff' ];then
    cd /Users/ruantong/Desktop/migu/cmread-iphone-dev_new_protal
    /Users/ruantong/Desktop/migu/arcanist/bin/arc diff --create
elif [ $1 == 'open' ];then
    open $2
elif [ $1 == 'skin' ];then
    open /Users/ruantong/Desktop/migu/需求/12_BR008601咪咕阅读主题皮肤功能/皮肤
elif [ $1 == 'iosre' ];then
    open /Users/ruantong/Desktop/migu/书籍/190616_iOS应用逆向工程
else
    echo other
fi
