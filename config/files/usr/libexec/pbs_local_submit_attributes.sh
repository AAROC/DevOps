#!/bin/sh
if [ "x$GlueHostApplicationSoftwareRunTimeEnvironment" == "x\"TAG1\"" ]; then
 echo "#PBS -l nodes=1:tag1:ppn=4"
fi
if [ "x$GlueHostApplicationSoftwareRunTimeEnvironment" == "x\"GPU\"" ]; then
 echo "#PBS -l nodes=1:gpu"
fi