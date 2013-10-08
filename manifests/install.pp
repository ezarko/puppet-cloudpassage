class cloudpassage::install {  
  yumrepo { 'cloudpassage':
    enabled   => 1,
    gpgcheck  => 1,
    gpgkey    => 'http://packages.cloudpassage.com/cloudpassage.packages.key',
    baseurl   => "http://packages.cloudpassage.com/redhat/$basearch",
    descr     => 'CloudPassage Production',
  }

  package { 'cphalo':
    ensure  => latest,
    require => Yumrepo['cloudpassage'],
    notify  => Exec['cphalod start'],
  }

  exec { 'cphalod start':    
    command     => "/etc/init.d/cphalod start --daemon-key=${cloudpassage::daemon_key} --tag=${cloudpassage::tags}",
    refreshonly => true,
    require     => Package['cphalo'],
  }
}
