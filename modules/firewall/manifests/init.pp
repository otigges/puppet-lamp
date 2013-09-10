class firewall{

    package { 'iptables':
        ensure => present
    }

}