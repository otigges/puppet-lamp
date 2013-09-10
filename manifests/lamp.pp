group { 'puppet': ensure => 'present' }

include firewall
include apache
include php
include php::composer

#include jenkins
#include sonar
