# install flask from pip3.

package { 'python3-pip':
ensure => installed,
}

exec { 'install flask':
command => '/usr/bin/pip3 install flask==2.1.0',
path    => ['/bin', '/usr/bin'],
unless  => '/usr/bin/pip3 list | /bin/grep flask | /bin/grep 2.1.0',
}
