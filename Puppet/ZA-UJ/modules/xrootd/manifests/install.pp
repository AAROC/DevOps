class xrootd::install (
) inherits xrootd::params {

  Class[Xrootd::Install] -> Class[Xrootd::Config]

    package {"xrootd":
      ensure => present
    }
}
