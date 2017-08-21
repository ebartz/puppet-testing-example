# please see README.md
class webserver {
  # define a list of packages that should be installed
  $packages = [ 'httpd', 'php-mysql', 'php-gd', 'php-mbstring', 'php']

  # make sure all packages of the array $packages will get installed
  package { $packages:
    ensure => installed,
  }
  # install phpmyadmin and keep it up2date
  package{ 'phpmyadmin':
    ensure => latest,
  }

  # make sure the config for phpmyadmin gets installed
  file { '/var/www/html/phpmyadmin/config.inc.php':
    owner   => root,
    require => Package['phpmyadmin'],
    source  => 'puppet:///modules/webserver/myadmin/config.inc.php',
  }

  # httpd service should start automatically and should always be running
  service { 'httpd':
    ensure  => running,
    enabled => true,
  }

  # order ressources
  Package[$packages] -> Package['phpmyadmin'] -> Service['httpd']

}
