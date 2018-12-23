#!/bin/bash
echo "stop SpringBoot Application"
jarname=demo-0.0.1-SNAPSHOT
pid=`ps -ef | grep ${jarname}.jar | grep -v grep | awk '{print $2}'`
echo “旧应用进程id：$pid”
if [ -n "$pid" ]
then
kill -9 $pid
fi
