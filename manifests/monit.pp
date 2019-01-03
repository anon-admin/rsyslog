# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include rsyslog::monit
class rsyslog::monit inherits monit::minimal::config {
  monit::fullfill_service { 'rsyslog': module => 'rsyslog', }
}
