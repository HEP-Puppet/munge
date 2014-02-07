class munge::install(
  $ensure = $munge::params::install_ensure,
) inherits munge::params {
  package { 'munge':
    ensure => $ensure,
  }
}
