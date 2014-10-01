## Written by: Christopher Lee (ZA-UJ)
##

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
