# main_template.R

cat("Working directory:", getwd(), "\n")

output_dir <- file.path(getwd(), "outputs/script30_8")
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
cat("Created directory:", output_dir, "\n")

source("DTvsfDT.R")


obs_gen_para <- read.csv("pattern_new/obstacle_8.csv")

dt <- 30 


the_result <- fDT_Alg_save(obs_gen_para, dt)


file_name <- file.path(output_dir, paste0("fDT30_8.rds"))
saveRDS(the_result, file = file_name)


