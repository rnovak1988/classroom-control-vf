class skeleton {
  file { '/etc/skel':
    ensure => directory
  }
  file { '/etc/skel/.bashrc':
    ensure   => present,
    source   => 'puppet:///modules/skeleton/.bashrc'
  }
  file { '/etc/skel/.profile':
    ensure => present,
    source => 'puppet:///modules/skeleton/.profile'
  }
}
