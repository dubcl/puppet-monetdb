# Class: monetdb::service
#
# Ensure start monetdb with default options
#
# Author: Carlos Albornoz <caralbornozc@gmail.com>

class monetdb::service inherits monetdb::params{

  service { $::monetdb::params::service_name:
    enable      => true,
    ensure      => running,
    hasrestart  => true,
    require     => File['/etc/default/monetdb5-sql'],
 }

}
