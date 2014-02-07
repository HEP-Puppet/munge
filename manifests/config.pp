class munge::config(
  $key_location = $munge::params::key_location,
) inherits munge::params {
  file { '/etc/munge/munge.key':
      ensure  => 'present',
      source  => $key_location,
      owner   => 'munge',
      group   => 'munge',
      mode    => '0400',
      require => Package['munge'],
  }
}
