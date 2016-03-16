# Class: monetdb::params
#
# Params for monetdb
#
# Author: Carlos Albornoz <caralbornozc@gmail.com>

class monetdb::params {

  $datadir                  = ''
  $package_ensure           = 'installed'
  $package_server_name      = 'monetdb5-sql'
  $service_name             = 'monetdb5-sql'
  $package_client_name      = 'monetdb-client'
  $repo_gpgkey              = 'https://www.monetdb.org/downloads/MonetDB-GPG-KEY'
  $repo_gpgkeyid            = '213E64DCD5DDC2C063CC39FD053C3ED40583366F'
  $default_datadir          = '/var/lib/monetdb'
  $startup                  = 'yes'

}