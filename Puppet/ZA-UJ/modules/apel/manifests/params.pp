### Written by: Christopher Lee
### should be ok for most AAROC sites

class apel::params {

## Comman details ##
  $db_hostname  = "???" # can be localhost
  $db_name      = "???"
  $db_port      = "3306"
  $db_username  = "???"
  $db_password  = "???"
  $site_name    = "???"
  $certificate  = "/etc/grid-security/hostcert.pem"
  $host_key     = "/etc/grid-security/hostkey.pem"
  $ca_path      = "/etc/grid-security/certificates"
  $check_crls   = "false"

## Config templates. Specify here:
  $parser_template    = 'apel/parser.erb'
  $client_template    = 'apel/client.erb'
  $sender_template    = 'apel/sender.erb'
  $receiver_template  = 'apel/receiver.erb'

## Parser Details ##
  $lrms_server        = "????" # Batch system hostname. This does not need to be a definitive hostname, but it should uniquely identify the batch system.
  $blah_enabled       = "true"
  $blah_directory     = "/var/log/cream/accounting"
  $blah_filname_pre   = "blahp.log"
  $blah_subdir        = "false"
  $batch_enabled      = "true"
  $batch_type         = "PBS" # Valid types are LSF, PBS, SGE, SLURM
  $batch_parallel     = "false"
  $batch_directory    = "/var/lib/torque/server_priv/accounting"
  $batch_file_pre     = "201"
  $batch_subdir       = "false"

## Client Details
  $spec_enabled         = "true"
  $spec_ldap_host       = "lcg-bdii.cern.ch"
  $spec_ldap_port       = "2170"
  $joiner_enabled       = "true"
  $joiner_local_jobs    = "true"
  $uploader_enabled     = "true"
  $uploader_directory   = "/var/spool/apel/"
  $uploader_send_summ   = "false"
  $uploader_hold_dns    = "false"
  $uploader_interval    = "latest"
  $uploader_send_ur     = "false"
  $ssm_enabled          = "true"

## Sender Details
  $sbroker_bdii     = "ldap://lcg-bdii.cern.ch:2170"
  $sbroker_network  = "PROD" #Test Location: "TEST-NWOB"
  $sbroker_use_ssl  = "false"
  $smessaging_dest  = "/queue/global.accounting.cpu.ZA-MERAKA" #"/queue/global.accounting.cpu.central" #Test location: "/queue/global.accounting.cputest.CENTRAL"
  $smessaging_path  = "/var/spool/apel/outgoing"

## Receiver Details ***Not really used by sites***
#Using the same broker details as for sender
  $rbroker_bdii     = $sbroker_bdii
  $rbroker_network  = $sbroker_network
  $rbroker_use_ssl  = "false"
  $rmessaging_dest  = "/queue/ssm2test"
  $rmessaging_path  = "/var/spool/apel"
}
