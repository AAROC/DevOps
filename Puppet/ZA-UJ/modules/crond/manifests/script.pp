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

class crond::script::base {
    ## needs to be readable by everybody
    ## for non-root scripts
    file {
        "/etc/cron.scripts":
        ensure=>directory,
        mode=>755,owner=>root,group=>root,
    }   
}

## install a script for cron
##
## Unless it is very generic, 
## the file source MUST be in its own module, 
## not mixed up in the crond modules
## If you have a script for a specific module, use crond::script like this:
## crond::script{"myscript.sh":source=>"puppet:///modules/mymodule/myscript.sh"}
## If you cannot choose a relevant module for the script source, use puppet:///modules/site_$SITE/cron.scripts/
##
define crond::script ($source=undef,$mode=750,$owner="root",$group="root")  {
    include crond::script::base
    if $source == undef {
        notice("@DEPRECATED usage crond::script{'$name':} on $hostname, caller '$caller_module_name': use explicit source=> , put file in its own module")
    }
    $src = $source? {
        undef => "puppet:///modules/$module_name/$name",
        default => $source
    }
    file {
        "/etc/cron.scripts/$name":
        mode=>$mode,owner=>$owner,group=>$group,
        source=>$src,
        require=>File["/etc/cron.scripts"]
    }
}
