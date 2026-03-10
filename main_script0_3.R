# main_template.R

cat("Working directory:", getwd(), "\n")

output_dir <- file.path(getwd(), "outputs/script0_3")
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
cat("Created directory:", output_dir, "\n")

source("DTvsfDT.R")


obs_gen_para <- read.csv("pattern_new/obstacle_3.csv")

dt <- 0 


the_result <- fDT_Alg_save(obs_gen_para, dt)


file_name <- file.path(output_dir, paste0("fDT0_3.rds"))
saveRDS(the_result, file = file_name)


