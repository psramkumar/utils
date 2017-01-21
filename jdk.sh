#!/bin/bash
##
##ln -s ~/bin/jdk.sh /usr/bin/jdk
VERSION=$1

if [ "$VERSION" != "7" ] && [ "$VERSION" != "8" ]
then 
	echo "Try using jdk [7|8]"
	exit 1
fi

if [ $VERSION == "8" ]; then
	export JAVA_HOME='/c/Program Files/Java/jdk1.8.0_45'
else
	export JAVA_HOME='/c/Program Files/Java/jdk1.7.0_79'
fi

PATH=$PATH:$JAVA_HOME/bin

export PATH

echo $PATH
