# Sys.time output POSIXct object
start_time <- as.POSIXct("2019-05-27 11:00:26")
end_time <- as.POSIXct("2019-05-27 11:10:00")

# subtraction output difftime object
duration <- end_time - start_time
# cat() only output numbers
cat(duration)
# str gives the attributes of automatic units for difftime object
str(duration)
attr(duration, "units")
