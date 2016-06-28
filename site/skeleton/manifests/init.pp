class skeleton {
  file { '/etc/skel':
    ensure => directory
  }
  file { '/etc/skel/.bashrc':
    ensure   => present,
    requires => '/etc/skel',
    source   => 'puppet:///modules/skeleton/.bashrc'
  }
}
