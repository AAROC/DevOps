# == Class: xrootd
#
# Full description of class xrootd here.
#
# === Parameters
#
#
# === Variables
#
#
# === Examples
#
#
# === Authors
#
# CERN DPM <dpm-devel@cern.ch>
#
# === Copyright
#
# Copyright 2012 CERN, unless otherwise noted.
#
class xrootd (
) inherits xrootd::params {

  Class[Xrootd::Install] -> Class[Xrootd::Config] -> Class[Xrootd::Service]

  class{"xrootd::install":}
  class{"xrootd::config":}
  class{"xrootd::service":}

}
