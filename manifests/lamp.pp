group { 'puppet': ensure => 'present' }

include firewall
include apache
include php
include php::composer

php::laravel {'laravel': }

#include jenkins
#include sonar
