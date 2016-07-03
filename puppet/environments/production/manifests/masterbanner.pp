file {"/etc/motd":
    ensure => 'file',
    content => "You have logged in the puppetmaster\n",
   }
