class cloudpassage::service {
  service { 'cphalod':
    ensure  => running,
    enable  => true,
    start   => "/etc/init.d/cphalod start --tag=${cloudpassage::tags}",
    require => Class['cloudpassage::install'],
  }
}
