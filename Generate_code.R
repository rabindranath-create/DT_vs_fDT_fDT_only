rm(list = ls())     
while (!is.null(dev.list())) dev.off()  

library("rstudioapi") # Load rstudioapi package
setwd(dirname(getActiveDocumentContext()$path)) # Set working directory to source file location
getwd() # Check updated working directory




template <- readLines("template.R")

the_seq <- seq(0, 30, by = 2.5)
the_which_obstacle <- seq(1, 20, by = 1)

for(the_which in the_which_obstacle){


for(i in the_seq){
  
  new_script <- template
  
  new_script <- gsub("outputs/script0_1", paste0("outputs/script", i, "_", the_which), new_script)
  
  new_script <- gsub("pattern_new/obstacle_1.csv", paste0("pattern_new/obstacle_", the_which, ".csv"), new_script)
  
  new_script <- gsub("dt <- 0", paste0("dt <- ", i), new_script)
  
  new_script <- gsub("fDT0_1.rds", paste0("fDT", i, "_", the_which ,".rds"), new_script)
  
  writeLines(new_script, paste0("main_script", i, "_", the_which, ".R"))
}
  
}
