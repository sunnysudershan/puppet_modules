$my_variable='two'

if $my_variable == 'one' {
   notify { "The value of our variable is one": }
}

elsif $my_variable == 'two' {
   notify { "The value of our variable is two": }
}

else {
    notify { "The value of our variable is ${my_variable}": }
}

case $my_variable {

'one' : {
   notify { " The value of pur variable is one " : }
     }

'default' : {
   notify { " The value of our variable is ${my_variable} in the case statement": }
     }
}

