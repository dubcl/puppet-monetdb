# Class: monetdb
# ===========================
#
# Installs and configure default monetdb.
#
# Author: Carlos Albornoz <caralbornozc@gmail.com>

class monetdb ( 
  $package_ensure       = $::monetdb::params::package_ensure,
  $package_server_name  = $::monetdb::params::package_server_name,
  $package_client_name  = $::monetdb::params::package_client_name,
  $manage_client        = true,
  $manage_service       = true,
  $manage_repo          = true,
  $repo_gpgcheck        = $::monetdb::params::repo_gpgcheck,
  $repo_gpgkey          = $::monetdb::params::repo_gpgkey,
  $repo_gpgkeyid        = $::monetdb::params::repo_gpgkeyid,
  $repo_name            = $::monetdb::params::repo_name,
  $repo_desc            = $::monetdb::params::repo_desc,
  $datadir              = $::monetdb::params::default_datadir,
  $config_startup       = $::monetdb::params::startup,
) inherits monetdb::params {

  class {'monetdb::install': } ->
  class {'monetdb::config':  } ~>
  class {'monetdb::service': } ->
  Class['monetdb']

}

