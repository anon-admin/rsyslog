# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include rsyslog::minimal::service
class rsyslog::minimal::service inherits rsyslog::minimal::config {
  service { 'rsyslog': }
  Package['rsyslog'] -> Service['rsyslog']
}
