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

## light wrapper to define a cronjob in /etc/cron.d
## Arguments :
## - mail defaults to "root"; set it to "" if you _really_ want it not to send mail (discouraged)
## - jobs is the job definition in /etc/crontab format. It can be an array of lines. 
## example usage :
##  $t=fqdn_rand(10)+24 # randomised start time
##    crond::job {
##        "kipmicheck":
##        comment=>"Check kipmi CPU usage, reset mc",
##        mail=>"email@nobody.com",
##        jobs="$t * * * * root /var/sbin/check_kipmi.sh",
##    }
##

define crond::job($jobs,$comment,$mail="root") {
    include crond::cleanup
    file {
        "/etc/cron.d/${name}.puppet.cron":
        owner=>root,group=>root,
        content=>template("crond/job.erb")
    }
}
