## Written by: Christopher Lee (ZA-UJ) ##
##
## This module requires the crond module for creating cron jobs.
## either install that as well, or create your own crons by removing the crond::job below

class apel::parser inherits apel::params {
  pkg { [
	  "apel-parsers",
	  ]:ensure => present;
  }
  
  crond::job { "APEL_parser":
	  comment=>"APEL parser, checks logs and submits to local DB",
	  jobs=>" 05 16 * * * root /usr/bin/apelparser > /dev/null 2>&1",
  }
  
  file {
	"/etc/apel/parser.cfg":
	  ensure	=> present,
	  content	=> template("$parser_template"),
	  mode		=> 600;
  }
}
