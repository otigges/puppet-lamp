class apache {
  
  package {
    'httpd':
      ensure => present
  }

  file {
    '/etc/httpd/conf.d/vhost.conf':
      source => '/vagrant/files/vhost.conf',
      notify => Service['httpd'],
      require => Package['httpd'];
  }

  service {
    'httpd' :
      ensure => running,
      require => Package['httpd'];
  }
  
}