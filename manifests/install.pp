# Class: monetdb::install
#
# Ensure install monetdb server and client
#
# Author: Carlos Albornoz <caralbornozc@gmail.com>

class monetdb::install {

  apt::source { 'monetdb_repo':
    location => 'http://dev.monetdb.org/downloads/deb/',
    release  => $::lsbdistcodename,
    repos    => 'monetdb',
    key      => {
      'id'     => $::monetdb::repo_gpgkeyid,
      'source' => $::monetdb::repo_gpgkey,
    },
    include  => {
      'src' => true,
      'deb' => true,
    },
  }

  package { $monetdb::package_server_name:
    ensure  => $::monetdb::package_ensure,
    require => Exec['apt_update']
  }

  if $monetdb::manage_client {
    package { $monetdb::package_client_name:
      ensure  => $::monetdb::package_ensure,
      require => Exec['apt_update']
    }
 }

}