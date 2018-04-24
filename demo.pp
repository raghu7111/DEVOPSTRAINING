package { 'git': 
          name => 'git',
          ensure => installed
        }
package { 'httpd':
          name => 'httpd',
          ensure => installed
        }
file { '/var/www/html/index.html':
       ensure => present,
       content => "<html>HI</html>"
     }

user { 'nokia-build':
       ensure => present
     }

service { 'httpd':
        enable => true,
	ensure => "running"
}
