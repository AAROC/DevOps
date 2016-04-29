define xrootd::create_sysconfig (
  $filename = $title,
  $template = $xrootd::config::sysconfigfile_template,

  $xrootd_user = $xrootd::config::xrootd_user,
  $xrootd_group = $xrootd::config::xrootd_group,

  $xrootd_instances_options = $xrootd::config::xrootd_instances_options,
  $cmsd_instances_options = $xrootd::config::cmsd_instances_options,
  $purd_instances_options = $xrootd::config::purd_instances_options,
  $xfrd_instances_options = $xrootd::config::xfrd_instances_options,

  $exports = $xrootd::config::exports,

  $daemon_corefile_limit = $xrootd::config::daemon_corefile_limit
) {
  include xrootd::config

  file {"$filename":
    ensure  => file,
    owner   => $xrootd_user,
    group   => $xrootd_group,
    content => template($template)
  }

}
