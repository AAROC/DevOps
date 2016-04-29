define xrootd::create_authfile (
  $filename = $title,
  $template = $xrootd::config::authfile_template,
  $entries,
) {
  include xrootd::config

  file {$filename:
    ensure  => file,
    owner   => $xrootd_user,
    group   => $xrootd_group,
    content => template($template)
  }

}
