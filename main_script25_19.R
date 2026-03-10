# main_template.R

cat("Working directory:", getwd(), "\n")

output_dir <- file.path(getwd(), "outputs/script25_19")
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
cat("Created directory:", output_dir, "\n")

source("DTvsfDT.R")


obs_gen_para <- read.csv("pattern_new/obstacle_19.csv")

dt <- 25 


the_result <- fDT_Alg_save(obs_gen_para, dt)


file_name <- file.path(output_dir, paste0("fDT25_19.rds"))
saveRDS(the_result, file = file_name)


