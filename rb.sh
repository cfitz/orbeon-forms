#!/bin/bash
tcshutdown
rm -rf /usr/share/tomcat5/webapps/orbeon
ant orbeon-dist-war
 cp /Users/cfitz/code/orbeon-forms/build/distrib/orbeon.war /usr/share/tomcat5/webapps/orbeon.war 
tcstart
