class xrootd::config (

  $xrootd_user = $xrootd::params::xrootd_user,
  $xrootd_group = $xrootd::params::xrootd_group,

  $configdir = $xrootd::params::configdir,
  $logdir = $xrootd::params::logdir,

) inherits xrootd::params {

  include fetchcrl

  exec {"run-fetchcrl-atleastonce":
    path    => "/bin:/usr/bin:/sbin:/usr/sbin",
    command => "fetch-crl",
    unless  => "ls /etc/grid-security/certificates/*.r0"
  }

  if $::architecture == "x86_64" {
    $xrdlibdir = "lib64"
  } else {
    $xrdlibdir = "lib"
  }

  file {$configdir:
    ensure	=> directory,
    owner  => $xrootd_user,
    group  => $xrootd_group
  }

  file {$logdir:
    ensure => directory,
    owner  => $xrootd_user,
    group  => $xrootd_group
  }
}
