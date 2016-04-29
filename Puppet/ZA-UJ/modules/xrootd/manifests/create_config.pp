define xrootd::create_config (
  $filename = $title,
  $template = $xrootd::config::configfile_template,

  $configdir = $xrootd::config::configdir,

  $xrootd_user = $xrootd::config::xrootd_user,
  $xrootd_group = $xrootd::config::xrootd_group,

  # sets 'daemon.trace all' for ofs,xrd,cms,oss
  $xrd_debug = $xrootd::config::xrd_debug,

  $all_adminpath = $xrootd::config::all_adminpath,
  $all_pidpath = $xrootd::config::all_pidpath,
  # all.role for exec xrootd/cmsd
  $xrd_allrole = $xrootd::config::xrd_allrole,
  $xrd_allrole_list = $xrootd::config::xrd_allrole_list,
  $cmsd_allrole = $xrootd::config::cmsd_allrole,
  $all_export = $xrootd::config::all_export,
  $all_manager = $xrootd::config::all_manager,
  $all_sitename = $xrootd::config::all_sitename,

  $xrootd_redirect = $xrootd::config::xrootd_redirect,
  $xrootd_export = $xrootd::config::xrootd_export,
  $xrootd_seclib = $xrootd::config::xrootd_seclib,
  $xrootd_async = $xrootd::config::xrootd_async,

  $xrd_port = $xrootd::config::xrd_port,
  $xrd_network = $xrootd::config::xrd_network,

  $acc_authdb = $xrootd::config::acc_authdb,

  $ofs_authlib = $xrootd::config::ofs_authlib,
  $ofs_authorize = $xrootd::config::ofs_authorize,
  $ofs_persist = $xrootd::config::ofs_persist,
  # ofs.osslib for exec xrootd/cmsd
  $xrd_ofsosslib = $xrootd::config::xrd_ofsosslib,
  $cmsd_ofsosslib = $xrootd::config::cmsd_ofsosslib,
  $ofs_cmslib = $xrootd::config::ofs_cmslib,
  $ofs_forward = $xrootd::config::ofs_forward,
  $ofs_tpc = $xrootd::config::ofs_tpc,
  $oss_localroot = $xrootd::config::oss_localroot,

  $sec_protocol = $xrootd::config::sec_protocol,

  $pss_origin = $xrootd::config::pss_origin
) {
  include xrootd::config

  file {$filename:
    ensure  => file,
    owner   => $xrootd_user,
    group   => $xrootd_group,
    content => template($template)
  }

}
