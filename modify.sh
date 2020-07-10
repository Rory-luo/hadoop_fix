#!/bin/bash

function fix() {
	echo "******* Fixing these files ... *******"
	sed -i 's/0.0.0.0/localhost/' /usr/local/hadoop/etc/hadoop/core-site.xml	
	sed -i 's/0.0.0.0/localhost/' /usr/local/hadoop/etc/hadoop/hdfs-site.xml
	echo "******* Fixed Success ! *******"
}


function change() {
	echo "******* Restarting the dfs ... *******"
	cd /usr/local/hadoop
	./sbin/stop-dfs.sh
	./sbin/start-dfs.sh
	echo "******* Restarted ! ******"
	echo "The jps is running"
	jps
	echo "Now you could do anything!"
}
fix 
change

