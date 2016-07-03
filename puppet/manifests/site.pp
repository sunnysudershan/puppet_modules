node default {
     
     notify { "###########The default puppet configuration##########": }

}

node /puppetmaster.example.com/ {
     include skills  
     include apache
     notify { "...........We have matched the puppet node..........": }

}
