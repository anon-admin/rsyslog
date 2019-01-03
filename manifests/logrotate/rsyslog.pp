# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include rsyslog::logrotate::rsyslog
class rsyslog::logrotate::rsyslog {

  include rsyslog::service

  rsyslog::fullfill_service{ 'rsyslog': module => 'rsyslog', }
}
