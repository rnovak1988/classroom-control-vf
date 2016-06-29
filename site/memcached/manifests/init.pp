class memcached {
  package { 'memcached':
    ensure => present
  }
  file { 'memcached_config':
    path    => '/etc/sysconfig/memcached',
    source  => 'puppet:///modules/memcached/memcached_conf',
    owner   => 'root',
    mode    => '0644',
    require =>  Package['memcached']
  }
}
