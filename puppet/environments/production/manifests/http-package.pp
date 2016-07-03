package {"httpd":
       ensure => installed,
}

file {"/etc/httpd/conf.d/web.conf":
     ensure => file,
     content => "<VirtualHost *:80>
                ServerAdmin root@lab200-linux.ega.lab
                ServerName lab200-linux.ega.lab
                DocumentRoot /var/www/html
                </VirtualHost>

                <Directory /var/www/html>
                AllowOverride None
                Require all granted
                </Directory>",
    }

file {"/var/www/html/index.html":
     ensure => present,
     content => "<h1> This is puppetAgent Webserver </h1>",
     }

service {"httpd":
     ensure => running,
     }

exec { 'firewall-cmd':
     command => "firewall-cmd --add-service=http --permanent",
     path => "/usr/bin",
     refreshonly => "true",
     subscribe => Package['httpd'],
    }

service {'firewalld':
     ensure => running,
     enable => true,
     hasrestart => true,
     subscribe => Exec['firewall-cmd'],
     }
     
