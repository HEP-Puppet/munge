class munge {
  class { 'munge::install': }
  class { 'munge::service': }
  class { 'munge::config': }
}
