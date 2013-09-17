class apache {
    
  package {
    'httpd':
      ensure => present
  }
  
  # Add apache user to group 'vagrant' to read mounted devices
  user { 'apache':
    ensure => present,
    groups => ['apache', 'vagrant'],
    require => Package['httpd'];
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