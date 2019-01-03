# A description of what this defined type does
#
# @summary A short summary of the purpose of this defined type.
#
# @example
#   rsyslog::fullfill_service { 'namevar': }
define rsyslog::fullfill_service(
  $module = 'monit'
) {
  $service_rotate = $name

  include rsyslog::install

  file { "/etc/logrotate.d/${service_rotate}":
    owner   => root,
    group   => root,
    mode    => '0444',
    source  => "puppet:///modules/${module}/logrotate_${service_rotate}",
    require => [Service[$service_rotate], File['/etc/logrotate.d']],
  }

}
