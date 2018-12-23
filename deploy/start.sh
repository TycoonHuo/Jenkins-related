#!/bin/bash
jarname=demo-0.0.1-SNAPSHOT
export JAVA_HOME=/usr/java/default
echo ${JAVA_HOME}
echo "授权当前用户"
chmod 777 /jenkins_git_jars/${jarname}.jar 
echo "执行...."
cd /jenkins_git_jars
nohup ${JAVA_HOME}/bin/java -jar ${jarname}.jar > /dev/null &
echo "启动成功"
