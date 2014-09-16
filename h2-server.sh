#!/bin/sh
dir=$(dirname "$0")
java -cp "$dir/h2-1.3.176.jar:" org.h2.tools.Server \
	-properties '/opt/h2-conf/' -baseDir '/opt/h2-data/' \
 	-web -webAllowOthers -webPort 81 \
 	-tcp -tcpAllowOthers -tcpPort 1521