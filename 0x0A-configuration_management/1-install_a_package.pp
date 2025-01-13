# A puppet manifest installing flask v2.1.0 which is a package from pip3.
# Am also specifying the version of flask to install using the ensure attribute
package { ['Flask', 'Werkzeug']:
  ensure   => 'installed',
  provider => 'pip3',
}

exec { 'install flask 2.1.0':
  command => 'pip3 install Flask==2.1.0 Werkzeug==2.1.2',
  path    => ['/usr/bin', '/usr/local/bin'],
  require => Package['python3-pip'],
}

