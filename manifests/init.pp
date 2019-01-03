# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include rsyslog
class rsyslog {
  include rsyslog::service
  include rsyslog::logrotate::rsyslog
  include rsyslog::monit
}
