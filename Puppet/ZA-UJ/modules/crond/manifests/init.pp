#module for simplifying the creation of cron jobs in puppet.
#Copyright (C) 2014 - ATLAS TDAQ SysAdmins
#
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>.

## General Cleanup of non-managed crons
class crond::cleanup {
    tidy {
        "/etc/cron.d":
        age => 0, recurse => true,
        matches => "*.puppet.cron"
    }
    service {
      "crond": ensure=>running,enable=>true
    }
}

## Install an /etc/cron.scripts script and create a /etc/cron.d jobfile for it
## see crond::job and crond::script for details
## Arguments :
## - the $name of the entry is used for both 
##  - the script filename in /etc/cron.scripts
##  - the job filename in /etc/cron.d
## - mail defaults to "root"; set it to "" if you _really_ want it not to send mail (discouraged)
## - jobs is the job definition in /etc/crontab format. It can be an array of lines.
## - source is the usual file path on the puppet server
##   Unless it is very generic, the file source MUST be in its own module, not mixed up in the crond modules
##   If you cannot choose a relevant module for the script source, use puppet:///modules/site_$SITE/cron.scripts/
## example usage :
##  $t=fqdn_rand(10)+24 # randomised start time
##    crond::jobscript {
##        "myscript":
##        comment=>"Check something hourly and do something daily",
##        mail=>"email@nobody.com",
##        source=>"puppet:///modules/mymodule/myscript.sh",
##        jobs=>["$t * * * * root /etc/cron.scripts/myscript -c","$t 3 * * * root /etc/cron.scripts/myscript -x"],
##    }
##


define crond::jobscript ($jobs,$comment,$mail="root",$source,$mode=750,$owner="root",$group="root")  {
    crond::script{"$name":source=>$source,mode=>$mode,owner=>$owner,group=>$group} ->
    crond::job{"$name":jobs=>$jobs,comment=>$comment,mail=>$mail}
}
