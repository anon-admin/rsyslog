# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include rsyslog::install
class rsyslog::install inherits rsyslog::minimal::config {

  Package['rsyslog', 'logrotate'] {
    ensure => latest,
  }

  File['/etc/logrotate.d'] {
    ensure => directory,
  }


  include conf::config::apt
  Exec['/usr/bin/apt-get update'] -> Package['rsyslog']
  Exec['/usr/bin/apt-get update'] -> Package['logrotate']

}
