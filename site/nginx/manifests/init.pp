class nginx {
  package { 'nginx':
    ensure => present
  }
  file { 'webroot_directory':
    path   => '/var/www',
    ensure => directory,
    owner  => nginx,
    group  => nginx,
    mode   => '0755'
  }
  file { 'nginx_main_config':
    path    => '/etc/nginx/nginx.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/nginx/nginx.conf',
    require => Package['nginx']
  }
  file { 'nginx_vhost_config':
    path    => '/etc/nginx/conf.d/default.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/nginx/default.conf',
    require => [Package['nginx'], File['nginx_main_config']]
  }
  file { 'default_index_HTML':
    path    => '/var/www/index.html',
    owner   => 'nginx',
    group   => 'nginx',
    mode    => '0644',
    source  => 'puppet:///modules/nginx/index.html',
    require => File['webroot_directory']
  }
}
