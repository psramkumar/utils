@echo off
title Test

echo Select a version. (8/7)
set /p version=
set MAVEN_OPTS=-Xms256m -Xmx1024m -Xss1024k
IF /i "%version%"=="8" goto jdk8
IF /i "%version%"=="7" goto jdk7

echo Not found.
goto commonexit

:jdk8
	set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_45
	set PATH=%PATH:jdk1.7.0_79=jdk1.8.0_45%
	goto setVersion

:jdk7
	set JAVA_HOME=C:\Program Files\Java\jdk1.7.0_79
	@set PATH=%PATH:jdk1.8.0_45=jdk1.7.0_79%
	goto setVersion

:setVersion
	echo Setting %JAVA_HOME%
	echo setting PATH
	echo Display java version
	java -version
	echo Display java version
	path
	
:commonexit
	pause
	