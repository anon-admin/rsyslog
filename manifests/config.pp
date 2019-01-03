# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include rsyslog::config
class rsyslog::config inherits rsyslog::minimal::config {

  include rsyslog::install

  file { '/etc/cron.hourly/logrotate':
    owner   => root,
    group   => root,
    mode    => '0755',
    source  => '/etc/cron.daily/logrotate',
    before  => File['/etc/cron.daily/logrotate'],
    require => Package['logrotate'],
    replace => 'no', # this is the important property
  }

  file { '/etc/cron.daily/logrotate':
    ensure => absent,
  }

  exec { ['/bin/sed -i "s/monthly/daily/" /etc/logrotate.conf', '/bin/sed -i "s/weekly/daily/" /etc/logrotate.conf']:
    provider => shell,
    cwd      => '/tmp',
    require  => Package['logrotate'],
  }


}
