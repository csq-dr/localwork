# R convert object name into string
# https://stackoverflow.com/questions/14577412/how-to-convert-variable-object-name-into-string
x_test <- c(0, 1)
x_test
deparse(substitute(x_test))
sprintf("test to print object name `%s`", deparse(substitute(x_test)))
name1 = "one"
name2 = "two"
