## Written by: Christopher Lee (ZA-UJ) ##
##
## This module requires the crond module for creating cron jobs. 
## either install that as well, or create your own crons by removing the crond::job below
##
## NB: 	For now, you will have to create the database manually before the client can run.
## 		  After applying this module, run the following manually on the host:
##
## mysql -p –e "create database apelclient"
## mysql -p apelclient < /usr/share/apel/client.sql
## From in MYSQL:
## mysql> GRANT ALL PRIVILEGES ON apelclient.* TO 'apel'@'localhost' IDENTIFIED BY '<apel-password>';


class apel::client inherits apel::params {
  pkg { [
	"mysql-server",
	"apel-ssm",
	"apel-lib",
	"apel-client",
	]:ensure => present;
  }
  crond::job { "APEL_Client-Publisher":
	comment=>"APEL Client, submits data from DB to broker",
	jobs=>" 20 16 * * * root /usr/bin/apelclient > /dev/null 2>&1",
  }
  file {
	"/etc/apel/client.cfg":
	  ensure	=> present,
	  content	=> template("$client_template"),
	  mode		=> 600;
	"/etc/apel/sender.cfg":
	  ensure	=> present,
	  content	=> template("$sender_template"),
	  mode		=> 644;
	"/etc/apel/receiver.cfg":
	  ensure	=> present,
	  content	=> template("$receiver_template"),
	  mode		=> 644;
  }
}
