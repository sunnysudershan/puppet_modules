file {"/etc/motd":
ensure => 'file',
content => "\n#################################################################
#                  Welcome to Sunny's Tutorial.com              #
#               All connections are monitored and recorded      #
#     Disconnect IMMEDIATELY if you are not an authorized user! #
#################################################################\n\n",
}
