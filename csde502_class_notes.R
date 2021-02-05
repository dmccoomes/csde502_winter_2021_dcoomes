
#clearing out R session
rm(list=ls())
gc();


####################
## Class 1.29.21  ##
####################

#functions

function_name <- function(argument(s)) {
  statement(s)
}


f_square <- function(x) {
  message("input:")
  print(x)
  message("output:")
  x^2
}

f_square(c(1,2,3))
f_square(c(20, 50, 1000))

