#!/bin/sh
if [ "x$GlueHostApplicationSoftwareRunTimeEnvironment" == "x\"TAG1\"" ]; then
 echo "#PBS -l nodes=1:tag1:ppn=4"
fi
