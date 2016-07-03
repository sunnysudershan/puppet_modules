if $::operatingsystem == 'CentOS' {
   notify {'Installing on CentOS...    Using the IF STATEMENT': }
}

case $::operatingsystem {
   'CentOS': {
   notify { "Installing on CentOS... Using the CASE STATEMENT": }
   }

   'RedHat': {
   notify { "Installing on RedHat... Using the CASE STEMEMENT": }
  }
}
