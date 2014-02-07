class munge::service(
  $ensure = $munge::params::service_ensure,
  $enable = $munge::params::service_enabled,
) inherits munge::params {
  service { 'munge':
    ensure     => $ensure,
    enable     => $enable,
    hasrestart => true,
    hasstatus  => true,
    require    => Package['munge'],
    subscribe  => File['/etc/munge/munge.key'],
  }
}
