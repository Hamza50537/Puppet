package { 'Install httpd server':
  name => 'httpd',
  provider => 'dnf'
}

service { 'Starting and enabling the httpd service':
  name   => 'httpd',
  enable => true,
  ensure => true,
  require => Package['Install httpd server']
}

file { 'Default html page':
  path => '/var/www/html/index.html',
  content => '<html>\n<head>\n</head>\n<body>\n  <h1>Hello World<h1>\n</body>\n</html>',
  notify => Service['Starting and enabling the httpd service'],
  require => Package['Install httpd server']

}

file {'httpd server config file':
  path => '/etc/httpd/conf/httpd.conf',
  ensure => 'file',
  source => 'https://raw.githubusercontent.com/Hamza50537/Puppet-8-for-DevOps-Engineers/refs/heads/main/ch03/httpd.conf',
  require => Package['Install httpd server'],
  notify => Service['Starting and enabling the httpd service'],
  validate_cmd => '/usr/sbin/httpd -t -f %'
}
  
