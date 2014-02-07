class munge::params {
  # ==== munge ====
  # -- munge::install --
  # ensure: specifies whether to install the munge packages
  #   default key: $install_ensure
  #   hiera APL key: munge::install::ensure
  $install_ensure   = 'installed'

  # -- munge::service --
  # ensure: specifies whether to run the munge service
  #   default key: $service_ensure
  #   hiera APL key: munge::service::ensure
  $service_ensure   = 'running'
  # enable: specifies whether to start the munge service during boot
  #   default key: $service_enabled
  #   hiera APL key: munge::service::enable
  $service_enabled  = true

  # -- munge::config --
  # key_location: specifies where to find the munge key
  #     this has to be either a file:// or puppet:// url that can be used file the puppet file type
  #     this is a mandatory parameter, there is no default value
  #   default key: $key_location
  #   hiera APL key: munge::config::key_location
  $key_location     = undef
}
