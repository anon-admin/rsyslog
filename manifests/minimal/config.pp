# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include rsyslog::minimal::config
class rsyslog::minimal::config inherits rsyslog::minimal::install{
  file { '/etc/logrotate.d': }
  Package['logrotate'] -> File['/etc/logrotate.d']
}
