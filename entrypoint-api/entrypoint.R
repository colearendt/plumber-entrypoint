library(plumber)

message("Firing entrypoint script!")

pr <- plumb("plumber.R")
pr$registerHook("exit", function(){
  message("Bye bye!")
  print("Bye bye!")
  write("test-output", paste0(format(Sys.time(), "%Y%m%d_%H%M%S"),".txt"))
})

return(pr)