# Class: monetdb::config
#
# Configure the default monet config
#
# Author: Carlos Albornoz <caralbornozc@gmail.com>

class monetdb::config inherits monetdb {

  file { '/etc/default/monetdb5-sql':
     ensure  => file,
     mode    => 0644,
     content => template('monetdb/monetdb5-sql.erb'),
     notify  => Service[$::monetdb::params::service_name],
     require => Package[$::monetdb::params::package_server_name],
  }

}